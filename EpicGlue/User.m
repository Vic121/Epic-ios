//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "User.h"
#import "Plan.h"


@implementation User {

@private
    int _userId;
    NSString *_username;
    Plan *_plan;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize userId = _userId;
@synthesize username = _username;
@synthesize plan = _plan;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end