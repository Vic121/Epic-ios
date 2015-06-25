//
// Created by Marek Mikuliszyn on 25/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Location : NSObject

@property(readonly) float lat;
@property(readonly) float lon;
@property(readonly) NSString *name;

@end