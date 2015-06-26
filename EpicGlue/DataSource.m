//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "DataSource.h"
#import "Filter.h"
#import "ItemFilterList.h"
#import "ItemList.h"
#import "Item.h"
#import "URL.h"
#import "Connector.h"


@implementation DataSource {

@private
    Filter *_mainFilter;
    ItemFilterList *_additionalFilters;
}
@synthesize mainFilter = _mainFilter;
@synthesize additionalFilters = _additionalFilters;

+ (DataSource *)initWithFilter:(Filter *)filter {
    DataSource *ds = [DataSource instance];
    ds.mainFilter = filter;

    return ds;
}

+ (DataSource *)initWithFilters:(Filter *)filter and:(ItemFilterList *)list {
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
        }
    }

    return _instance;
}

- (ItemList *)fetch {
    Connector *conn = [Connector instance];
    ItemList *itemList = [ItemList instance];

    [conn sendGET:[URL getByDataSource:self] success:^(NSDictionary *source) {
        ItemList *itemList = [ItemList instance];

        if ([source objectForKey:@"error"] != nil) {
            NSLog(@"%@", source);
            return;
        }

        for (NSDictionary *json in [source objectForKey:@"data"]) {
            Item *item = [Item fromJSON:json];

            if (item == nil) {
                NSLog(@"item failed from url %@", json);
                continue;
            }

            [itemList addItem:item];
        }

        NSLog(@"Added %d items", [itemList count]);
    }     failure:^(NSError *error) {
        NSLog(@"fail");
    }];

    return itemList;
}

@end