//
//  ViewController.m
//  RunTime
//
//  Created by Xin Qin on 12/15/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

#import "ViewController.h"
#import "Sark.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
//    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//    
//    BOOL res3 = [(id)[NSObject new] isKindOfClass:[NSObject class]];
//    BOOL res4 = [(id)[NSObject new] isMemberOfClass:[NSObject class]];
//    
//    BOOL res5 = [(id)[Sark class] isKindOfClass:[NSObject class]];
//    BOOL res6 = [(id)[Sark class] isMemberOfClass:[Sark class]];
//    
//    BOOL res7 = [(id)[NSObject new] isKindOfClass:[Sark class]];
//    BOOL res8 = [(id)[Sark new] isMemberOfClass:[NSObject class]];
//    NSLog(@"res1 = %d, res2 = %d, res3 = %d, res4 = %d, res5 = %d, res6 = %d, res7 = %d, res8 = %d, nsobject.superClass = %@",res1, res2, res3, res4, res5, res6, res7, res8, [[NSObject class] superclass]);
    
//    NSLog(@"111");
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"222");
//    });
//    NSLog(@"333");
    
//    dispatch_queue_t queue1 = dispatch_queue_create("queue1", NULL);
//    dispatch_queue_t queue2 = dispatch_queue_create("queue2", NULL);//DISPATCH_QUEUE_CONCURRENT
//    
//    dispatch_sync(queue1, ^{
//        NSLog(@"queue1");
//        
//        dispatch_sync(queue2, ^{
//            NSLog(@"queue2");
//            
//            dispatch_sync(queue1, ^{
//                NSLog(@"queue3");
//            });
//            
//        });
//        
//    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // 执行耗时操作
        [NSThread sleepForTimeInterval:1.0];
        dispatch_async(dispatch_get_main_queue(), ^{
            // 回到主线程作刷新UI等操作
            NSLog(@"main");
        });
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
