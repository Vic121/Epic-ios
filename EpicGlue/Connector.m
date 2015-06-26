//
//  Connector.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "Connector.h"

#import "AFNetworking.h"

@implementation Connector

+ (Connector *)instance {
    static Connector *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (NSDictionary *)sendGET:(NSString *)url
                  success:(void (^)(NSDictionary *json))success
                  failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id json) {
//        NSLog(@"JSON: %@", json);
        success(json);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        failure(error);
    }];
    
    return [NSDictionary dictionary];
}

- (NSDictionary *)sendPOST:(NSString *)url
               withPayload:(NSDictionary *)payload
                   success:(void (^)(NSDictionary *json))success
                   failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager POST:url parameters:payload success:^(AFHTTPRequestOperation *operation, id json) {
        NSLog(@"JSON: %@", json);
        success(json);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        failure(error);
    }];
    
    return [NSDictionary dictionary];
}

@end
