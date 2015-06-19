//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Item.h"


@implementation Item {
@private
    NSString *_itemId;
    NSString *_title;
    NSString *_description;
    NSString *_mediaType;
    NSString *_itemType;
    NSString *_url;
    NSString *_author;
    NSString *_authorImage;
    NSString *_authorImageLarge;
    NSString *_visiblity;
    NSString *_image;
    NSString *_imageSmall;
    NSString *_imageLarge;
    Location *_location;
    NSDate *_contentCreatedAt;
    NSDate *_orderDate;
    NSDate *_createdAt;
    NSDate *_updatedAt;
}
@synthesize itemId = _itemId;
@synthesize title = _title;
@synthesize description = _description;
@synthesize mediaType = _mediaType;
@synthesize itemType = _itemType;
@synthesize url = _url;
@synthesize author = _author;
@synthesize authorImage = _authorImage;
@synthesize authorImageLarge = _authorImageLarge;
@synthesize visiblity = _visiblity;
@synthesize image = _image;
@synthesize imageSmall = _imageSmall;
@synthesize imageLarge = _imageLarge;
@synthesize location = _location;
@synthesize contentCreatedAt = _contentCreatedAt;
@synthesize orderDate = _orderDate;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;

+ (Item *)fromJSON:(JSON *)json {
    static Item *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    _instance.itemId = [json objectForKey:@"item_id"];

    return _instance;
}

- (NSString *)getCellIdentifier {
    return nil;
}

- (ItemCell *)getCell {
    return nil;
}


@end