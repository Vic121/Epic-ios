//
//  ItemManager.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemManager.h"

#import "ItemModelFactory.h"

@implementation ItemManager

@synthesize items;

- (void)fetchItems:(void (^)(void))onSuccess
           onFailure:(void (^)(void))onFailure
{
    NSMutableArray *models = [[NSMutableArray alloc] init];
    
    [self sendGET:@"http://artur.com/items.json" success:^(NSDictionary *json) {
        NSLog(@"success");
        
        for (NSDictionary *json_item in json)
        {
            ItemModel *item = [ItemModelFactory modelFromJSON:json_item];
            
            [models addObject:item];
        }
        
//        items = [items arrayByAddingObjectsFromArray:models];
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
