//
//  DownloadOperation.h
//  NSOperationDemo
//
//  Created by wyb on 2019/9/26.
//  Copyright © 2019 世纪佳缘. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DownloadOperation : NSOperation

//重写了父类的属性，成员变量不会自动合成。要@synthesize executing = _executing;
@property (nonatomic,assign, getter=isExecuting) BOOL executing;
@property (nonatomic,assign, getter=isFinished) BOOL finished;

@end

NS_ASSUME_NONNULL_END
