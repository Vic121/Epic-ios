//
//  ItemManager.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemManager.h"

#import "ItemFactory.h"

@implementation ItemManager

@synthesize items;

// TODO: everything to scrap
- (void)fetchItems:(void (^)(void))onSuccess
           onFailure:(void (^)(void))onFailure
{
    NSMutableArray *models = [[NSMutableArray alloc] init];

    [self sendGET:@"http://localhost:7000/items" success:^(NSDictionary *json) {
        NSLog(@"success");
        
        for (NSDictionary *json_item in json)
        {
            Item *item = [ItemFactory modelFromJSON:json_item];
            
            [models addObject:item];
        }
        
        items = [NSArray arrayWithArray:models];
        
        NSLog(@"%d items", items.count);
        
        onSuccess();
        
        NSLog(@"added items");
    } failure:^(NSError *error) {
        NSLog(@"fail");
        
        onFailure();
    }];
}

@end
