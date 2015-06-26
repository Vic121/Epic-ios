//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "UserSocialProfile.h"
#import "Service.h"
#import "User.h"


@implementation UserSocialProfile {

@private
    User *_user;
    Service *_service;
    NSDictionary *_jsonProfile;
    BOOL _isActive;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize user = _user;
@synthesize service = _service;
@synthesize jsonProfile = _jsonProfile;
@synthesize isActive = _isActive;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end