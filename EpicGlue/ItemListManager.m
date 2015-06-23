//
// Created by Marek Mikuliszyn on 22/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemListManager.h"
#import "ItemList.h"
#import "DataSource.h"
#import "ItemFilter.h"
#import "Subscription.h"
#import "Service.h"
#import "Item.h"


@implementation ItemListManager {

@private
    DataSource *_dataSource;
    ItemList *_currentItemList;
}

@synthesize dataSource = _dataSource;
@synthesize currentItemList = _currentItemList;

+ (ItemListManager *)instance {
    static ItemListManager *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (ItemList *)getItems:(ItemFilter *)filter {
    ItemList *itemList = [ItemList instance];

    [self sendGET:[self buildURL:filter] success:^(NSDictionary *source) {
        NSLog(@"success");

        if ([source objectForKey:@"error"] != nil) {

        }

        for (NSDictionary *json in [source objectForKey:@"data"]) {
            Item *item = [Item fromJSON:json];

            if (item == nil) {
                NSLog(@"item failed from url %@", json);
                continue;
            }

            [itemList addItem:item];
        }

        NSLog(@"Added %d items", [[itemList getList] count]);
    }     failure:^(NSError *error) {
        NSLog(@"fail");
    }];
}

- (void)sendGET:(NSURL *)url success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {

}

- (NSURL *)buildURL:(ItemFilter *)filter {
    NSString *url = nil;

    if (filter == nil) {
        url = [NSString stringWithFormat:@"%s/items", API_URL];
    }
    else if (filter.subscription == nil) {
        url = [NSString stringWithFormat:@"sub/%d", filter.subscription.subscriptionId];
    }
    else {
        url = [NSString stringWithFormat:@"service/%s", filter.service.shortName];
    }

    // TODO support k,v

    return [NSURL URLWithString:url];
}

- (NSURL *)buildURL:(ItemFilter *)filter withPagination:(NSString *)paginatorName token:(NSString *)paginatorToken {
    if ([paginatorName isEqualToString:PAGINATE_BEFORE] || [paginatorName isEqualToString:PAGINATE_AFTER]) {
        return [NSURL URLWithString:[NSString stringWithFormat:@"?%s=%s", paginatorName, paginatorToken] relativeToURL:[self buildURL:filter]];
    }

    return [self buildURL:filter];
}


- (void)switchItemList:(ItemList *)list {

}

- (BOOL)loadEalier {
    return NO;
}

- (BOOL)loadLater {
    return NO;
}

- (BOOL)reload {
    return NO;
}


- (void)newDataSource:(DataSource *)data {
    self.dataSource = data;


}


@end