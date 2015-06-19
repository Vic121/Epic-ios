//
//  Connector.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Connector.h"

#import "AFNetworking.h"
#import "JSON.h"

@implementation Connector

- (NSDictionary *)sendGET:(NSString *)url
                  success:(void (^)(JSON *json))success
                  failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id json) {
        NSLog(@"JSON: %@", json);
        success([JSON fromDict:json]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        failure(error);
    }];
    
    return [NSDictionary dictionary];
}

- (NSDictionary *)sendPOST:(NSString *)url
               withPayload:(JSON *)payload
                   success:(void (^)(JSON *json))success
                   failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager POST:url parameters:payload success:^(AFHTTPRequestOperation *operation, id json) {
        NSLog(@"JSON: %@", json);
        success([JSON fromDict:json]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        failure(error);
    }];
    
    return [NSDictionary dictionary];
}

@end
