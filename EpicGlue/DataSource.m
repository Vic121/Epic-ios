//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "DataSource.h"
#import "Filter.h"
#import "FilterList.h"
#import "ItemList.h"
#import "Item.h"
#import "Connector.h"
#import "ItemCollectionViewController.h"
#import "Subscription.h"
#import "Service.h"
#import "NSString+ABXURLEncoding.h"


@implementation DataSource {

@private
    Filter *_mainFilter;
    FilterList *_additionalFilters;
    ItemList *_itemList;
}
@synthesize mainFilter = _mainFilter;
@synthesize additionalFilters = _additionalFilters;
@synthesize itemList = _itemList;

#pragma mark -
#pragma mark Init

+ (DataSource *)initWithFilter:(Filter *)filter {
    DataSource *ds = [DataSource instance];
    ds.mainFilter = filter;

    return ds;
}

+ (DataSource *)initWithFilters:(Filter *)filter and:(FilterList *)list {
    DataSource *ds = [DataSource instance];
    ds.mainFilter = filter;
    ds.additionalFilters = list;

    return ds;
}

+ (DataSource *)instance {
    static DataSource *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
            _instance.itemList = [ItemList instance];
        }
    }

    return _instance;
}

#pragma mark URL

- (NSString *)getAllPath {
    return @"/items";
}

- (NSURL *)getURL {
    NSString *url;
    NSString *domain = @"http://192.168.1.115:7000";


    if (self.mainFilter == nil) {
        url = [NSString stringWithFormat:@"%s%s", domain, [self getAllPath]];
    }
    else if (self.mainFilter.subscription != nil) {
        url = [NSString stringWithFormat:@"%s/sub/%d", domain, self.mainFilter.subscription.subscriptionId];
    }
    else if (self.mainFilter.service != nil) {
        url = [NSString stringWithFormat:@"%s/service/%s", domain, self.mainFilter.service.shortName];
    }
    else {
        url = [NSString stringWithFormat:@"%s%s", domain, [self getAllPath]];
    }

    if ([self.additionalFilters count] > 0) {
        NSMutableArray *params;
        for (Filter *filter in self.additionalFilters) {
            [params addObject:[NSString stringWithFormat:@"%s=%s", filter.key, [filter.value urlEncodedString]]];
        }

        if ([params count] > 0) {
            url = [params componentsJoinedByString:@"&"];
        }
    }

    NSLog(url);

    return [NSURL URLWithString:url];
}

#pragma mark Fetch

- (void)fetch {
    Connector *conn = [Connector instance];

    [conn sendGET:[self getURL] success:^(NSDictionary *source) {
        if ([source objectForKey:@"error"] != nil) {
            NSLog(@"%@", source);
            return;
        }

        ItemList *newList = [ItemList instance];

        for (NSDictionary *json in [source objectForKey:@"data"]) {
            Item *item = [Item fromJSON:json];

            if (item == nil) {
                NSLog(@"item failed from url %@", json);
                continue;
            }

            [newList addItem:json];
        }

        NSLog(@"Added %d items", [newList count]);

        [[NSNotificationCenter defaultCenter] postNotificationName:NewItemsNotification object:newList];

    }     failure:^(NSError *error) {
        NSLog(@"fail");
    }];
}

# pragma mark Data Source

- (int)itemsCount {
    return [self.itemList count];
}

- (Item *)itemAtIndex:(NSInteger)index {
    return [self.itemList getItemAtIndex:index];
}

@end