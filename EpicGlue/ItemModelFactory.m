//
//  ItemModelFactory.m
//  EpicGlue
//
//  Created by Marek on 15/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemModelFactory.h"

#import "ImageItemModel.h"
#import "VideoItemModel.h"
#import "TextItemModel.h"
#import "TweetItemModel.h"
#import "LinkItemModel.h"

@implementation ItemModelFactory

+(ItemModel *)modelFromJSON:(NSDictionary *)json;
{
    NSString *mediaType = [[json objectForKey:@"media_type"] string];
    
    if ([mediaType isEqualToString:@"image"])
    {
        return [ImageItemModel fromJSON:json];
    }
    else if ([mediaType isEqualToString:@"video"])
    {
        return [VideoItemModel fromJSON:json];
    }
    else if ([mediaType isEqualToString:@"text"])
    {
        return [TextItemModel fromJSON:json];
    }
    else if ([mediaType isEqualToString:@"tweet"])
    {
        return [TweetItemModel fromJSON:json];
    }
    else if ([mediaType isEqualToString:@"link"])
    {
        return [LinkItemModel fromJSON:json];
    }
    
    NSLog(@"MediaType %@ not recognized", mediaType);
    return [ItemModel fromJSON:json];
}

@end
