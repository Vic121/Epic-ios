//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@class ServiceProfile;


@interface UserStat : NSObject

@property(readonly) User *user;
@property(readonly) ServiceProfile *profile;
@property(readonly) NSDate *date;
@property(readonly) NSString *key;
@property(readonly) NSString *value;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end