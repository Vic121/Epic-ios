//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "JSON.h"

@implementation JSON;


+ (JSON *)fromDict:(NSDictionary *)_dict {
    JSON *json = [[JSON alloc] init];
    json.dict = _dict;

    return json;
}

@end