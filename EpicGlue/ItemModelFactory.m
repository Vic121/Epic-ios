//
//  ItemModelFactory.m
//  EpicGlue
//
//  Created by Marek on 15/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemModelFactory.h"
#import "Item.h"
#import "JSON.h"

@implementation ItemModelFactory

+ (Item *)modelFromJSON:(JSON *)json;
{
    NSString *mediaType = [json[@"media_type"] string];
    
    NSLog(@"MediaType %@ not recognized", mediaType);

    return [Item fromJSON:json];
}

@end
