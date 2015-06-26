//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemFilterList.h"
#import "ItemFilter.h"


@implementation ItemFilterList {

@private
    NSMutableArray *_list;
}
@synthesize list = _list;

+ (ItemFilterList *)initWithFilters:(NSArray *)filters {
    ItemFilterList *list = [[ItemFilterList alloc] init];
    list.list = filters;

    return list;
}

- (NSArray *)getList {
    return [NSArray arrayWithArray:self.list];
}

- (int)count {
    return [self.list count];
}


@end