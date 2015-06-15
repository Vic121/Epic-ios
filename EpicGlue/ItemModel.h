//
//  ItemModel.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Model.h"

@interface ItemModel : Model

@property (nonatomic) NSString *itemHash;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *desc;
@property (nonatomic) NSString *mediaType;
@property (nonatomic) NSString *itemType;
@property (nonatomic) NSString *url;
@property (nonatomic) NSString *author;
@property (nonatomic) NSString *visiblity;
@property (nonatomic) NSString *image;
@property (nonatomic) NSString *imageSmall;
@property (nonatomic) NSString *imageLarge;
@property (nonatomic) NSArray *location;
@property (nonatomic) NSString *contentId;
@property (nonatomic) NSDate *contentCreatedAt;
@property (nonatomic) NSDate *createdAt;
@property (nonatomic) NSDate *updatedAt;

+ (ItemModel *)fromJSON:(NSDictionary *)json;
+ (NSDate *)DateFromString:(NSString *)str;

typedef enum mediaTypes
{
    PHOTO,
    VIDEO,
    LINK,
    TEXT
} MediaType;

@end
