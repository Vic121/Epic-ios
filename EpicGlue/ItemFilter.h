//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Service;
@class Subscription;


@interface ItemFilter : NSObject

@property(readonly) Service *service;
@property(readonly) Subscription *subscription;
@property(readonly) NSString *key;
@property(readonly) NSString *value;

@end