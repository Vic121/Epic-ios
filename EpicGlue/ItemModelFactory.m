//
//  ItemModelFactory.m
//  EpicGlue
//
//  Created by Marek on 15/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemModelFactory.h"

@implementation ItemModelFactory

+(ItemModel *)modelFromJSON:(NSDictionary *)json;
{
    NSString *mediaType = [json[@"media_type"] string];
    
    NSLog(@"MediaType %@ not recognized", mediaType);
    return [ItemModel fromJSON:json];
}

@end
