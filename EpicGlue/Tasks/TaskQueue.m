//
// Created by Marek Mikuliszyn on 20/06/15.
// Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "TaskQueue.h"
#import "Task.h"

int const MAX_CONCURRENT_TASKS = 10;

@implementation TaskQueue {

@private
    NSMutableDictionary *_tasksInProgress;
    NSOperationQueue *_queue;
}

@synthesize tasksInProgress = _tasksInProgress;
@synthesize queue = _queue;

- (NSOperationQueue *)queue {
    if (!_queue) {
        NSOperationQueue *q = [[NSOperationQueue alloc] init];
        q.name = @"Task Queue";
        q.maxConcurrentOperationCount = MAX_CONCURRENT_TASKS;

        _queue = q;
    }

    return _queue;
}

- (void)addTask:(Task *)task {
    [_queue addOperation:task];
}


@end