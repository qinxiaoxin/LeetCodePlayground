//
//  ViewController.m
//  CommentDemo
//
//  Created by Xin Qin on 3/18/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import "ViewController.h"
#import "BulletManager.h"
#import "BulletView.h"

@interface ViewController ()

@property (nonatomic, strong) BulletManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _manager = [[BulletManager alloc] init];
    
    __weak typeof(self) weakSelf = self;
    _manager.generateViewBlock = ^(BulletView *view){
        [weakSelf addBulletView:view];
    };
}

- (IBAction)clickBtn:(id)sender {
    [_manager start];
}

- (IBAction)stopBtn:(id)sender {
    [_manager stop];
}

- (void)addBulletView: (BulletView *)view {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    view.frame = CGRectMake(width, 300 + view.trajectory * 50, CGRectGetWidth(view.bounds), CGRectGetHeight(view.bounds));
    [self.view addSubview:view];
    
    [view startAnimation];
}


@end
