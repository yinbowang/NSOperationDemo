//
//  ViewController.m
//  NSOperationDemo
//
//  Created by wyb on 2019/9/25.
//  Copyright © 2019 世纪佳缘. All rights reserved.
//

#import "ViewController.h"
#import "DownloadOperation.h"

@interface ViewController ()

@property (nonatomic,strong) NSOperationQueue *queue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    self.queue = [[NSOperationQueue alloc]init];
    self.queue.maxConcurrentOperationCount = 2;
    
    for (NSInteger i=0; i<5; i++) {
      DownloadOperation *operation = [[DownloadOperation alloc]init];
      [self.queue addOperation:operation];
    }
    
    
}


@end
