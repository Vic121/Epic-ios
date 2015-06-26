//
// Created by Marek Mikuliszyn on 26/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "URL.h"
#import "ItemFilterList.h"
#import "Filter.h"
#import "NSString+ABXURLEncoding.h"
#import "Subscription.h"
#import "Service.h"
#import "DataSource.h"

@implementation URL

+ (NSURL *)getAll {
    return @"http://192.168.1.115:7000/items";
}

+ (NSURL *)getByDataSource:(DataSource *)ds {
    if (ds == nil) {
        NSLog(@"data source is nil");
        return [URL getAll];
    }

    NSString *url;

    if (ds.mainFilter == nil) {
        url = [URL getAll];
    }
    else if (ds.mainFilter.subscription != nil) {
        url = [NSString stringWithFormat:@"http://192.168.1.115:7000/sub/%d", ds.mainFilter.subscription.subscriptionId];
    }
    else if (ds.mainFilter.service != nil) {
        url = [NSString stringWithFormat:@"http://192.168.1.115:7000/service/%s", ds.mainFilter.service.shortName];
    }
    else {
        url = [URL getAll];
    }

    if ([ds.additionalFilters count] > 0) {
        NSMutableArray *params;
        for (Filter *filter in ds.additionalFilters) {
            [params addObject:[NSString stringWithFormat:@"%s=%s", filter.key, [filter.value urlEncodedString]]];
        }

        if ([params count] > 0) {
            url = [params componentsJoinedByString:@"&"];
        }
    }

    NSLog(url);

    return url;
}

@end