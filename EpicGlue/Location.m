//
// Created by Marek Mikuliszyn on 25/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Location.h"


@implementation Location {

@private
    float _lat;
    float _lon;
    NSString *_name;
}
@synthesize lat = _lat;
@synthesize lon = _lon;
@synthesize name = _name;
@end