//
// Created by Marek Mikuliszyn on 23/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "FilterList.h"


@implementation FilterList {

@private
    NSMutableArray *_list;
}
@synthesize list = _list;

+ (FilterList *)initWithFilters:(NSArray *)filters {
    FilterList *list = [[FilterList alloc] init];
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