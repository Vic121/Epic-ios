//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Service;
@class Subscription;


@interface Filter : NSObject

@property(nonatomic) Service *service;
@property(nonatomic) Subscription *subscription;
@property(nonatomic) NSString *key;
@property(nonatomic) NSString *value;

@end