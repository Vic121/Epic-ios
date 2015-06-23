//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemFilterList.h"
#import "ItemFilter.h"


@implementation ItemFilterList {

@private
    NSArray *_list;
}
@synthesize list = _list;

- (void)addFilter:(ItemFilter *)filter {
    [self.list addObject:filter];
}

- (NSArray *)getList {
    return [NSArray arrayWithArray:self.list];
}


@end