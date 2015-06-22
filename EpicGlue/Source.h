//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Service;


@interface Source : NSObject

@property(readonly) Service *service;
@property(readonly) NSString *name;
@property(readonly) NSString *description;
@property(readonly) BOOL allowFilter;
@property(readonly) BOOL allowValue;
@property(readonly) BOOL isPerUser;
@property(readonly) int minRefresh;
@property(readonly) BOOL isActive;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end