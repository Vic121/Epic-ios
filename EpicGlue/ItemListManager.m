//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemListManager.h"
#import "ItemList.h"
#import "DataSource.h"
#import "Connector.h"

@implementation ItemListManager {

@private
    DataSource *_dataSource;
    ItemList *_currentItemList;
    BOOL _inProgress;
    Connector *_conn;
}

@synthesize dataSource = _dataSource;
@synthesize currentItemList = _currentItemList;
@synthesize inProgress = _inProgress;
@synthesize conn = _conn;

+ (ItemListManager *)instance {
    static ItemListManager *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
            _instance.conn = [Connector instance];
        }
    }

    return _instance;
}

+ (ItemListManager *)initWithDataSource:(DataSource *)ds {
    ItemListManager *manager = [ItemListManager instance];
    manager.dataSource = ds;

    return manager;
}

- (int)count {
    return [[self.dataSource itemList] count];
}

- (BOOL)loadEalier {
    return NO;
}

- (BOOL)loadLater {
    return NO;
}

- (BOOL)reload {
    self.inProgress = TRUE;
    // build url
    // fetch and build items
    // replace item list
    // start caching items

    // TODO: nextToken, prevToken, nextURL, prevURL
    return NO;
}


- (void)newDataSource:(DataSource *)data {
    self.dataSource = data;
}


@end