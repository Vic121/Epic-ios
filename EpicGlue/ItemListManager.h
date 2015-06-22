//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemList;
@class DataSource;


@interface ItemListManager : NSObject

@property ItemList *itemList;
@property DataSource *dataSource;

+ (ItemListManager *)instance;

- (void)newDataSource:(DataSource *)data;

@end