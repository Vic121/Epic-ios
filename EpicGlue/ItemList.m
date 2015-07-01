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
            _instance.list = [NSMutableArray array];
        }
    }

    return _instance;
}

- (void)addItem:(NSDictionary *)item {
    [self.list addObject:item];
}

- (Item *)getItemAtIndex:(NSInteger)index {
    return [Item fromJSON:[self.list objectAtIndex:index]];
}

- (NSArray *)getList {
    return self.list;
}

- (int)count {
    return [self.list count];
}

@end
