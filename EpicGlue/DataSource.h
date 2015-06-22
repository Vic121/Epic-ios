//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Source;
@class Subscription;


@interface DataSource : NSObject

@property Source *source;
@property Subscription *subscription;


@end