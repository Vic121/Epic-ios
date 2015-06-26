//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemList;
@class DataSource;
@class Filter;
@class Connector;
@class URL;
@class FilterList;

@interface ItemListManager : NSObject

@property (nonatomic) Connector *conn;
@property (nonatomic) URL *url;
@property (nonatomic) FilterList *filterList;
@property ItemList *currentItemList;
@property DataSource *dataSource;
@property (nonatomic) BOOL inProgress;

+ (ItemListManager *)instance;
+ (ItemListManager *)initWithDataSource:(DataSource *)ds;

- (ItemList *)getItems;

- (BOOL)loadEalier;

- (BOOL)loadLater;

- (BOOL)reload;

- (void)newDataSource:(DataSource *)data;

@end