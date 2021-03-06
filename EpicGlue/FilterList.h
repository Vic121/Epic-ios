//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Filter;


@interface FilterList : NSObject

@property(nonatomic) NSArray *list;

+ (FilterList *)initWithFilters:(NSArray *)filters;

- (NSArray *)getList;
- (int) count;

@end