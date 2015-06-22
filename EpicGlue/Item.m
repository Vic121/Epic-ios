//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Item.h"


@implementation Item {

@private
    NSString *_itemId;
    NSString *_author;
    NSString *_authorImage;
    NSString *_authorImageLarge;
    NSString *_image;
    NSString *_imageSmall;
    NSString *_imageLarge;
    NSString *_itemType;
    NSString *_mediaType;
    NSString *_service;
    NSString *_title;
    NSString *_description;
    NSString *_url;
    NSArray *_tags;
    BOOL _isRead;
    BOOL _hasPin;
    float _lat;
    float _lon;
    NSString *_locationName;
    int _points;
    int _comments;
    NSDate *_contentCreatedAt;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}


@synthesize itemId = _itemId;
@synthesize author = _author;
@synthesize authorImage = _authorImage;
@synthesize authorImageLarge = _authorImageLarge;
@synthesize image = _image;
@synthesize imageSmall = _imageSmall;
@synthesize imageLarge = _imageLarge;
@synthesize itemType = _itemType;
@synthesize mediaType = _mediaType;
@synthesize service = _service;
@synthesize title = _title;
@synthesize description = _description;
@synthesize url = _url;
@synthesize tags = _tags;
@synthesize isRead = _isRead;
@synthesize hasPin = _hasPin;
@synthesize lat = _lat;
@synthesize lon = _lon;
@synthesize locationName = _locationName;
@synthesize points = _points;
@synthesize comments = _comments;
@synthesize contentCreatedAt = _contentCreatedAt;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;

+ (Item *)fromJSON:(JSON *)json {
    static Item *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

//    _instance.itemId = [json objectForKey:@"item_id"];

    return _instance;
}

- (NSString *)getCellIdentifier {
    return nil;
}

- (ItemCell *)getCell {
    return nil;
}


@end