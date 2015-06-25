//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Service : NSObject

@property(readonly) int serviceId;
//@property(readonly) Category *category;
@property(readonly) int categoryId;
@property(readonly) NSString *shortName;
@property(readonly) NSString *description;
@property(readonly) BOOL isVisible;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

@end