//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Service;
@class User;
@class JSON;


@interface UserSocialProfile : NSObject

@property(readonly) User *user;
@property(readonly) Service *service;
@property(readonly) JSON *jsonProfile;
@property(readonly) BOOL isActive;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end