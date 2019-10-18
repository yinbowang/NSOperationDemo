//
//  DownloadOperation.m
//  NSOperationDemo
//
//  Created by wyb on 2019/9/26.
//  Copyright © 2019 世纪佳缘. All rights reserved.
//

#import "DownloadOperation.h"


@implementation DownloadOperation

@synthesize executing = _executing;
@synthesize finished = _finished;

- (void)start{
    self.executing = YES;
    static NSInteger a = 0;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"_________%ld",a++);
        self.finished = YES;
        self.executing = NO;
    });
}

- (void)setFinished:(BOOL)finished {
    [self willChangeValueForKey:@"isFinished"];
    _finished = finished;
    [self didChangeValueForKey:@"isFinished"];
}

- (void)setExecuting:(BOOL)executing {
    [self willChangeValueForKey:@"isExecuting"];
    _executing = executing;
    [self didChangeValueForKey:@"isExecuting"];
}

- (BOOL)isAsynchronous{
    return YES;
}

@end
