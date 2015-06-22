//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Token.h"
#import "ServiceProfile.h"


@implementation Token {

@private
    ServiceProfile *_profile;
    NSString *_token;
    NSString *_tokenSecret;
    NSString *_refreshToken;
    NSDate *_resetAt;
    BOOL _isActive;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize profile = _profile;
@synthesize token = _token;
@synthesize tokenSecret = _tokenSecret;
@synthesize refreshToken = _refreshToken;
@synthesize resetAt = _resetAt;
@synthesize isActive = _isActive;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end