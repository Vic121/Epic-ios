//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ServiceProfile;


@interface Token : NSObject

@property(readonly) ServiceProfile *profile;
@property(readonly) NSString *token;
@property(readonly) NSString *tokenSecret;
@property(readonly) NSString *refreshToken;
@property(readonly) NSDate *resetAt;
@property(readonly) BOOL isActive;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end