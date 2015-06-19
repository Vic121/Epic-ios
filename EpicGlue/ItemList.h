//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JSON;


@interface ItemList : NSObject

+ (ItemList *)fromJSON:(JSON *)_json;
//-()fetch;

@end