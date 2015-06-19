//
// Created by Marek Mikuliszyn on 19/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "DateParser.h"
#import "ISO8601DateFormatter.h"


@implementation DateParser {

}

+ (NSDate *)dateFromString:(NSString *)string {
    ISO8601DateFormatter *formatter = [[ISO8601DateFormatter alloc] init];
    return [formatter dateFromString:string timeZone:[NSTimeZone localTimeZone]];
}

@end