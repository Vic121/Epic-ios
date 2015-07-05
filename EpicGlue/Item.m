//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Item.h"
#import "ItemCell.h"

NSString * const ImageCell = @"ImageCell";
NSString * const ImageCellWithTitle = @"ImageCellWithTitle";
NSString * const VideoCell = @"VideoCell";
NSString * const VideoCellWithTitle = @"VideoCellWithTitle";
NSString * const CellWithTitle = @"CellWithTitle";
NSString * const CellWithTitleAndDescription = @"CellWithTitleAndDescription";

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

+ (Item *)instance {
    static Item *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}
+ (Item *)fromJSON:(NSDictionary *)j {
//    NSLog(@"%@", j);

    Item *i = [Item instance];

    i.itemId = [j objectForKey:@"id"];
    i.author = [j objectForKey:@"author"];
    i.authorImage = [j objectForKey:@"author_image"];
    i.authorImageLarge = [j objectForKey:@"author_image_large"];
    i.image = [j objectForKey:@"image"];
    i.imageSmall = [j objectForKey:@"image_small"];
    i.imageLarge = [j objectForKey:@"image_large"];
    i.itemType = [j objectForKey:@"item_type"];
    i.mediaType = [j objectForKey:@"media_type"];
    i.service = [j objectForKey:@"service"];
    i.title = [j objectForKey:@"title"];
    i.description = [j objectForKey:@"description"];
    i.url = [j objectForKey:@"url"];
    i.points = (int) [j objectForKey:@"points"];
    i.comments = (int) [j objectForKey:@"comments"];
    i.tags = [j objectForKey:@"tags"];
    i.locationName = [j objectForKey:@"location_name"];
    i.createdAt = [j objectForKey:@"created_at"];
    i.updatedAt = [j objectForKey:@"updated_at"];

    if ([j objectForKey:@"lat"] != nil) {
        i.lat = [[j objectForKey:@"lat"] floatValue];
    }
    if ([j objectForKey:@"lon"] != nil) {
        i.lat = [[j objectForKey:@"lon"] floatValue];
    }

    return i;
}

- (NSString *)getCellIdentifier {

    if ([self.mediaType isEqualToString:@"video"]) {
        if (self.title != nil) {
            return VideoCellWithTitle;
        }
        return VideoCell;
    }
    else if ([self.mediaType isEqualToString:@"image"]) {
        if (self.title != nil) {
            return ImageCellWithTitle;
        }
        return ImageCell;
    }

    if (self.description != nil) {
        return CellWithTitleAndDescription;
    }

    return CellWithTitle;
}

- (ItemCell *)getCell {
    return nil;
}


@end