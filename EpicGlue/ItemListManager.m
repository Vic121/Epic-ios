//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemListManager.h"
#import "ItemList.h"
#import "DataSource.h"


@implementation ItemListManager {

@private
    ItemList *_itemList;
    DataSource *_dataSource;
}

@synthesize itemList = _itemList;
@synthesize dataSource = _dataSource;

+ (ItemListManager *)instance {
    static ItemListManager *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (void)newDataSource:(DataSource *)data {
    self.dataSource = data;


}


@end