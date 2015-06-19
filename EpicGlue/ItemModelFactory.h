//
//  ItemModelFactory.h
//  EpicGlue
//
//  Created by Marek on 15/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Item;
@class JSON;

@interface ItemModelFactory : NSObject

+ (Item *)modelFromJSON:(JSON *)json;

@end
