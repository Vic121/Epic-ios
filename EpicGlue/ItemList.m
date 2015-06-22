//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemList.h"
#import "JSON.h"


@implementation ItemList {
@private
    NSArray *_items;
}
@synthesize items = _items;;

+ (ItemList *)fromJSON:(JSON *)_json {
    return nil;
};