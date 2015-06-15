//
//  ItemManager.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Connector.h"

@interface ItemManager : Connector

@property (nonatomic) NSArray* items;

- (void)fetchItems:(void (^)(void))onSuccess
         onFailure:(void (^)(void))onFailure;

@end
