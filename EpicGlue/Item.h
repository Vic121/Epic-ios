//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Location;
@class ItemCell;
@class JSON;


@interface Item : NSObject

@property(nonatomic) NSString *itemId;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *description;
@property(nonatomic) NSString *mediaType;
@property(nonatomic) NSString *itemType;
@property(nonatomic) NSString *url;
@property(nonatomic) NSString *author;
@property(nonatomic) NSString *authorImage;
@property(nonatomic) NSString *authorImageLarge;
@property(nonatomic) NSString *visiblity;
@property(nonatomic) NSString *image;
@property(nonatomic) NSString *imageSmall;
@property(nonatomic) NSString *imageLarge;
@property(nonatomic) Location *location;
@property(nonatomic) NSDate *contentCreatedAt;
@property(nonatomic) NSDate *orderDate;
@property(nonatomic) NSDate *createdAt;
@property(nonatomic) NSDate *updatedAt;

+ (Item *)fromJSON:(JSON *)json;

- (NSString *)getCellIdentifier;

- (ItemCell *)getCell;

typedef enum mediaTypes {
    PHOTO,
    VIDEO,
    LINK,
    TEXT
} MediaType;

@end