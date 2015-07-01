//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "DataSource.h"
#import "Filter.h"
#import "FilterList.h"
#import "ItemList.h"
#import "Item.h"
#import "URL.h"
#import "Connector.h"
#import "ItemCollectionViewController.h"


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
#pragma mark init

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

#pragma mark data

- (void)fetch {
    Connector *conn = [Connector instance];

    [conn sendGET:[URL getByDataSource:self] success:^(NSDictionary *source) {
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

//            NSLog(@"added %@", item.author);
            [newList addItem:json];
        }

        NSLog(@"Added %d items", [newList count]);

        [[NSNotificationCenter defaultCenter] postNotificationName:NewItemsNotification object:newList];

    }     failure:^(NSError *error) {
        NSLog(@"fail");
    }];
}

# pragma mark data source

- (int)itemsCount {
    return [self.itemList count];
}

- (Item *)itemAtIndex:(NSInteger)index {
    return [self.itemList getItemAtIndex:index];
}

@end