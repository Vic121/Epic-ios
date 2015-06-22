//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Source;
@class ServiceProfile;


@interface Subscription : NSObject

@property(readonly) int subscriptionId;
@property(readonly) Source *source;
@property(readonly) ServiceProfile *serviceProfile;
@property(readonly) NSString *filter;
@property(readonly) NSString *value;
@property(readonly) NSDate *lastRefreshAt;
@property(readonly) BOOL dueRefresh;
@property(readonly) NSString *status;
@property(readonly) int tokensUsed;
@property(readonly) int tokensLeft;
@property(readonly) NSDate *tokensResetAt;
@property(readonly) BOOL isActive;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end