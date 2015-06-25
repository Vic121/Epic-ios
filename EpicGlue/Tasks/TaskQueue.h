//
// Created by Marek Mikuliszyn on 20/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Task;

FOUNDATION_EXPORT int const MAX_CONCURRENT_TASKS;

@interface TaskQueue : NSObject

@property (nonatomic, strong) NSMutableDictionary *tasksInProgress;
@property (nonatomic, strong) NSOperationQueue *queue;


+ (TaskQueue *)makeQueue;
- (void)addTask:(Task *)task;

@end