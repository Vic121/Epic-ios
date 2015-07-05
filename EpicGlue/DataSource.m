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

NSString * const SERVER = @"http://46.4.68.112:7000";

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

- (NSString *)getURL {
    NSString *url;

    if (self.mainFilter == nil) {
        url = [NSString stringWithFormat:@"%@", [self getAllPath]];
    }
    else if (self.mainFilter.subscription != nil) {
        url = [NSString stringWithFormat:@"/sub/%d", self.mainFilter.subscription.subscriptionId];
    }
    else if (self.mainFilter.service != nil) {
        url = [NSString stringWithFormat:@"/service/%@", self.mainFilter.service.shortName];
    }
    else {
        url = [NSString stringWithFormat:@"%@", [self getAllPath]];
    }

    if ([self.additionalFilters count] > 0) {
        NSMutableArray *params;
        for (Filter *filter in self.additionalFilters) {
            [params addObject:[NSString stringWithFormat:@"%@=%@", filter.key, [filter.value urlEncodedString]]];
        }

        if ([params count] > 0) {
            url = [params componentsJoinedByString:@"&"];
        }
    }

    return [NSString stringWithFormat:@"%@%@", SERVER, url];
}

#pragma mark Fetch

- (void)fetch {
    // uncomment to use real server
//    Connector *conn = [Connector instance];
//
//    [conn sendGET:[self getURL] success:^(NSDictionary *source) {
//        [self processData:source];
//    }     failure:^(NSError *error) {
//        NSLog(@"fail");
//    }];

    // load mock file
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"items" ofType:@"json"];
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:nil];
    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableContainers error:nil];
    [self processData:jsonObject];
}

- (void)processData:(NSDictionary *)data {
    if ([data objectForKey:@"error"] != nil) {
        NSLog(@"%@", data);
        return;
    }

    ItemList *newList = [ItemList instance];

    for (NSDictionary *json in [data objectForKey:@"data"]) {
        Item *item = [Item fromJSON:json];

        if (item == nil) {
            NSLog(@"item failed from url %@", json);
            continue;
        }

        [newList addItem:json];
    }

    NSLog(@"Added %d items", [newList count]);

    [[NSNotificationCenter defaultCenter] postNotificationName:NewItemsNotification object:newList];
}

# pragma mark Data Source

- (int)itemsCount {
    return [self.itemList count];
}

- (Item *)itemAtIndex:(NSInteger)index {
    return [self.itemList getItemAtIndex:index];
}

@end