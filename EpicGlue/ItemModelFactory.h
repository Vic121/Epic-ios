//
//  ItemModelFactory.h
//  EpicGlue
//
//  Created by Marek on 15/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ItemModel.h"

@interface ItemModelFactory : NSObject

+(ItemModel *)modelFromJSON:(NSDictionary *)json;

@end
