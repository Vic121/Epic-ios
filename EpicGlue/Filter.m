//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Filter.h"
#import "Service.h"
#import "Subscription.h"


@implementation Filter {

@private
    Service *_service;
    Subscription *_subscription;
    NSString *_key;
    NSString *_value;
}
@synthesize service = _service;
@synthesize subscription = _subscription;
@synthesize key = _key;
@synthesize value = _value;
@end