//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Source.h"
#import "Service.h"


@implementation Source {

@private
    Service *_service;
    NSString *_name;
    NSString *_description;
    BOOL _allowFilter;
    BOOL _allowValue;
    BOOL _isPerUser;
    int _minRefresh;
    BOOL _isActive;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize service = _service;
@synthesize name = _name;
@synthesize description = _description;
@synthesize allowFilter = _allowFilter;
@synthesize allowValue = _allowValue;
@synthesize isPerUser = _isPerUser;
@synthesize minRefresh = _minRefresh;
@synthesize isActive = _isActive;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end