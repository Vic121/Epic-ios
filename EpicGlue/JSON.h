//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JSON : NSDictionary

@property(nonatomic) NSDictionary *dict;

+ (JSON *)fromDict:(NSDictionary *)_dict;

@end