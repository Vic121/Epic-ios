//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemFilter;


@interface ItemFilterList : NSObject

@property(nonatomic) NSMutableArray *list;

- (void)addFilter:(ItemFilter *)filter;

- (NSArray *)getList;

@end