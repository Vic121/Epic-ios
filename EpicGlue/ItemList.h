//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemFilterList;
@class Item;


@interface ItemList : NSObject

@property(nonatomic) NSMutableArray *list;
@property(nonatomic) ItemFilterList *filters;

+ (ItemList *)instance;

- (void)addItem:(Item *)item;

- (NSArray *)getList;
- (int)count;
//-()fetch;

@end