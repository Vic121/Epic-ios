//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemList;
@class DataSource;
@class ItemFilter;

FOUNDATION_EXPORT NSString *const API_URL;
FOUNDATION_EXPORT NSString *const PAGINATE_BEFORE;
FOUNDATION_EXPORT NSString *const PAGINATE_AFTER;

@interface ItemListManager : NSObject

@property ItemList *currentItemList;
@property DataSource *dataSource;

+ (ItemListManager *)instance;

- (ItemList *)getItems:(ItemFilter *)filter;

- (NSURL *)buildURL:(ItemFilter *)filter;

- (NSURL *)buildURL:(ItemFilter *)filter withPagination:(NSString *)paginatorName token:(NSString *)paginatorToken;

- (void)switchItemList:(ItemList *)list;

- (BOOL)loadEalier;

- (BOOL)loadLater;

- (BOOL)reload;

- (void)newDataSource:(DataSource *)data;

@end