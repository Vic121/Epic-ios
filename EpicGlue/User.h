//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Plan;


@interface User : NSObject

@property(readonly) int userId;
@property(readonly) NSString *username;
@property(readonly) Plan *plan;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end