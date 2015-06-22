//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ServiceProfile.h"
#import "Service.h"
#import "User.h"


@implementation ServiceProfile {

@private
    User *_user;
    Service *_service;
    NSString *_identifier;
    NSString *_friendlyName;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize user = _user;
@synthesize service = _service;
@synthesize identifier = _identifier;
@synthesize friendlyName = _friendlyName;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end