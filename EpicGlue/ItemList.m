//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemList.h"
#import "Item.h"


@implementation ItemList {
@private
    NSMutableArray *_list;
}
@synthesize list = _list;

+ (ItemList *)instance {
    static ItemList *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (void)addItem:(Item *)item {
    [self.list addObject:item];
}

- (NSArray *)getList {
    return self.list;
}

- (int)count {
    return [self.list count];
}

@end
