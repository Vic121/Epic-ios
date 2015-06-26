//
//  Connector.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Connector : NSObject
+ (Connector *)instance;


- (NSDictionary *)sendGET:(NSString *)url
                  success:(void (^)(NSDictionary *json))success
                  failure:(void (^)(NSError *error))failure;
- (NSDictionary *)sendPOST:(NSString *)url
               withPayload:(NSDictionary *)payload
                   success:(void (^)(NSDictionary *json))success
                   failure:(void (^)(NSError *error))failure;

@end
