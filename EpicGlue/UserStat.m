//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "UserStat.h"
#import "User.h"
#import "ServiceProfile.h"


@implementation UserStat {

@private
    User *_user;
    ServiceProfile *_profile;
    NSDate *_date;
    NSString *_key;
    NSString *_value;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize user = _user;
@synthesize profile = _profile;
@synthesize date = _date;
@synthesize key = _key;
@synthesize value = _value;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end