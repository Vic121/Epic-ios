//
//  ItemModel.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel

@synthesize author, contentCreatedAt, contentId, createdAt, desc, image, imageLarge, imageSmall, itemHash, itemType, location, mediaType, title, updatedAt, url, visiblity;

+ (ItemModel *)fromJSON:(NSDictionary *)json
{
    NSLog(@"%@", json);
    
    ItemModel *item = [[ItemModel alloc] init];
    item.author = [json objectForKey:@"author"];
    item.contentCreatedAt = [ItemModel DateFromString:[json objectForKey:@"content_created_at"]];
    item.contentId = [json objectForKey:@"content_id"];
    item.createdAt = [ItemModel DateFromString:[json objectForKey:@"created_at"]];
    item.desc = [json objectForKey:@"description"];
    item.image = [json objectForKey:@"image"];
    item.imageLarge = [json objectForKey:@"image_large"];
    item.imageSmall = [json objectForKey:@"image_small"];
    item.itemHash = [json objectForKey:@"hash"];
    item.itemType = [json objectForKey:@"item_type"];
//    item.location = [json objectForKey:@"location"];
    item.mediaType = [json objectForKey:@"media_type"];
    item.title = [json objectForKey:@"title"];
    item.updatedAt = [ItemModel DateFromString:[json objectForKey:@"updated_at"]];
    item.url = [json objectForKey:@"url"];
    item.visiblity = [json objectForKey:@"visiblity"];
    
    return item;
}

+ (NSDate *)DateFromString:(NSString *)str
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter dateFromString: str];
}

@end
