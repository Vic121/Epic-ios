//
// Created by Marek Mikuliszyn on 26/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataSource;

@interface URL : NSObject

+ (NSURL *)getAll;
+ (NSURL *)getByDataSource:(DataSource *)ds;

@end