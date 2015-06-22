//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Subscription.h"
#import "Source.h"
#import "ServiceProfile.h"


@implementation Subscription {

@private
    int _subscriptionId;
    Source *_source;
    ServiceProfile *_serviceProfile;
    NSString *_filter;
    NSString *_value;
    NSDate *_lastRefreshAt;
    BOOL _dueRefresh;
    NSString *_status;
    int _tokensUsed;
    int _tokensLeft;
    NSDate *_tokensResetAt;
    BOOL _isActive;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize subscriptionId = _subscriptionId;
@synthesize source = _source;
@synthesize serviceProfile = _serviceProfile;
@synthesize filter = _filter;
@synthesize value = _value;
@synthesize lastRefreshAt = _lastRefreshAt;
@synthesize dueRefresh = _dueRefresh;
@synthesize status = _status;
@synthesize tokensUsed = _tokensUsed;
@synthesize tokensLeft = _tokensLeft;
@synthesize tokensResetAt = _tokensResetAt;
@synthesize isActive = _isActive;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end