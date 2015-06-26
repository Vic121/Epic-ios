//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Filter;
@class ItemFilterList;
@class ItemList;


@interface DataSource : NSObject

@property (nonatomic) Filter *mainFilter;
@property (nonatomic) ItemFilterList *additionalFilters;

+ (DataSource *)instance;
+ (DataSource *)initWithFilter:(Filter *)filter;
+ (DataSource *)initWithFilters:(Filter *)filter and:(ItemFilterList *)list;



- (ItemList *)fetch;

@end