//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <objc/runtime.h>
#import "Service.h"


@implementation Service {

@private
    int _serviceId;
    int _categoryId;
    NSString *_shortName;
    NSString *_description;
    BOOL _isVisible;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}

@synthesize serviceId = _serviceId;
@synthesize categoryId = _categoryId;
@synthesize shortName = _shortName;
@synthesize description = _description;
@synthesize isVisible = _isVisible;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@end