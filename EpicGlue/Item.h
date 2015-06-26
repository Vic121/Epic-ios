//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemCell;


@interface Item : NSObject

@property(nonatomic) NSString *itemId;
@property(nonatomic) NSString *author;
@property(nonatomic) NSString *authorImage;
@property(nonatomic) NSString *authorImageLarge;
@property(nonatomic) NSString *image;
@property(nonatomic) NSString *imageSmall;
@property(nonatomic) NSString *imageLarge;
@property(nonatomic) NSString *itemType;
@property(nonatomic) NSString *mediaType;
@property(nonatomic) NSString *service;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *description;
@property(nonatomic) NSString *url;
@property(nonatomic) NSArray *tags;
@property(nonatomic) BOOL isRead;
@property(nonatomic) BOOL hasPin;
@property(nonatomic) float lat;
@property(nonatomic) float lon;
@property(nonatomic) NSString *locationName;
@property(nonatomic) int points;
@property(nonatomic) int comments;
@property(nonatomic) NSDate *contentCreatedAt;
@property(nonatomic) NSDate *createdAt;
@property(nonatomic) NSDate *updatedAt;

+ (Item *)fromJSON:(NSDictionary *)json;

+ (Item *)instance;


- (NSString *)getCellIdentifier;

- (ItemCell *)getCell;

@end