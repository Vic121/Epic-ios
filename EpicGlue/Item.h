//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Location;
@class ItemCell;
@class JSON;


@interface Item : NSObject

@property(readonly) NSString *itemId;
@property(readonly) NSString *author;
@property(readonly) NSString *authorImage;
@property(readonly) NSString *authorImageLarge;
@property(readonly) NSString *image;
@property(readonly) NSString *imageSmall;
@property(readonly) NSString *imageLarge;
@property(readonly) NSString *itemType;
@property(readonly) NSString *mediaType;
@property(readonly) NSString *service;
@property(readonly) NSString *title;
@property(readonly) NSString *description;
@property(readonly) NSString *url;
@property(readonly) NSArray *tags;
@property(readonly) BOOL isRead;
@property(readonly) BOOL hasPin;
@property(readonly) float lat;
@property(readonly) float lon;
@property(readonly) NSString *locationName;
@property(readonly) int points;
@property(readonly) int comments;
@property(readonly) NSDate *contentCreatedAt;
@property(readonly) NSDate *createdAt;
@property(readonly) NSDate *updatedAt;

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