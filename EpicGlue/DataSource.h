//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Filter;
@class FilterList;
@class ItemList;
@class Item;


@interface DataSource : NSObject

@property (nonatomic) Filter *mainFilter;
@property (nonatomic) FilterList *additionalFilters;
@property (nonatomic) ItemList *itemList;

+ (DataSource *)instance;
+ (DataSource *)initWithFilter:(Filter *)filter;
+ (DataSource *)initWithFilters:(Filter *)filter and:(FilterList *)list;

- (NSString *)getAllPath;
- (NSString *)getURL;
- (void)fetch;

- (int)itemsCount;
- (Item *)itemAtIndex:(NSInteger)index;

@end