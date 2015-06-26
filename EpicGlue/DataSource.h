//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemFilter;
@class ItemFilterList;
@class ItemList;


@interface DataSource : NSObject

@property (nonatomic) ItemFilter *mainFilter;
@property (nonatomic) ItemFilterList *additionalFilters;

+ (DataSource *)instance;
+ (DataSource *)initWithFilter:(ItemFilter *)filter;
+ (DataSource *)initWithFilters:(ItemFilter *)filter and:(ItemFilterList *)list;



- (ItemList *)fetch;

@end