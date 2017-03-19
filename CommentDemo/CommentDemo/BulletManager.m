//
//  BulletManager.m
//  CommentDemo
//
//  Created by Xin Qin on 3/18/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import "BulletManager.h"
#import "BulletView.h"

@interface BulletManager()

//弹幕的数组来源
@property (nonatomic, strong) NSMutableArray *dataSource;

//弹幕使用过程中的数组变量
@property (nonatomic, strong) NSMutableArray *bulletComments;

//存储弹幕view的数组变量
@property (nonatomic, strong) NSMutableArray *bulletViews;

@property BOOL bStopAnimation;

@end

@implementation BulletManager

- (instancetype) init {
    if (self = [super init]) {
        _bStopAnimation = true;
    }
    return self;
}

//弹幕开始
- (void)start {
    
    if (!self.bStopAnimation) {
        return;
    }
    
    _bStopAnimation = false;
    
    [self.bulletComments removeAllObjects];
    [self.bulletComments addObjectsFromArray:self.dataSource];
    
    [self initBulletComments];
}

//弹幕结束
- (void)stop {
    if (self.bStopAnimation) {
        return;
    }
    self.bStopAnimation = true;
    
    //遍历bulletView
    [self.bulletViews enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        BulletView *view = obj;
        [view stopAnimation];
        view = nil;
    }];
    [self.bulletViews removeAllObjects];
}

- (void)initBulletComments {
    
    NSMutableArray *trajectorys = [NSMutableArray arrayWithArray:@[@(0), @(1), @(2)]];
    
    for (int i = 0; i < 3; i++) {
        
        if (self.bulletComments.count > 0) {
            //通过随机数获取到弹幕的轨迹
            NSInteger index = arc4random() % trajectorys.count;
            int trajectory = [[trajectorys objectAtIndex:index] intValue];
            [trajectorys removeObjectAtIndex:index];
            
            //从弹幕数组中逐一取出弹幕数据
            NSString *comment = [self.bulletComments firstObject];
            [self.bulletComments removeObjectAtIndex:0];
            
            //创建view
            [self createBulletView: comment trajectory: trajectory];
        }
        
    }
}

- (void)createBulletView: (NSString *)comment trajectory: (int)trajectory {
    
    if (self.bStopAnimation) {
        return;
    }
    
    
    BulletView *bulletView = [[BulletView alloc] initWithComment:comment];
    bulletView.trajectory = trajectory;
    [self.bulletViews addObject: bulletView];
    
    __weak typeof (bulletView) weakView = bulletView;
    __weak typeof (self) weakSelf = self;
    bulletView.moveStatusBlock = ^(MoveStatus status){
        if (self.bStopAnimation) {
            return;
        }
        
        switch (status) {
            case Start:
                //弹幕开始进入屏幕，将view加入弹幕管理的变量中bulletViews
                [weakSelf.bulletViews addObject:weakView];
                break;
                
            case Enter: {
                //弹幕完全进入屏幕 判断是否还有其他弹幕 如果有则在该弹幕轨迹中再添加一个弹幕
                NSString *nextComment = [weakSelf nextComment];
                if (nextComment) {
                    [weakSelf createBulletView:nextComment trajectory:trajectory];
                }
                break;
            }
                
            case End:
            {
                //暗牧完全飞出屏幕后 从bulletViews中删除 释放资源
                if ([weakSelf.bulletViews containsObject:weakView]) {
                    [weakView stopAnimation];
                    [weakSelf.bulletViews removeObject:weakView];
                }
                //实现循环
                if (weakSelf.bulletViews.count == 0) {
                    weakSelf.bStopAnimation = true;
                    [weakSelf start];
                }
                break;
            }
                
            default:
                break;
        }

    };
    
    if (weakSelf.generateViewBlock) {
        weakSelf.generateViewBlock(bulletView);
    }
    
}

- (NSString *)nextComment {
    if (self.bulletComments.count == 0) {
        return nil;
    }
    
    NSString *comment = [self.bulletComments firstObject];
    if (comment) {
        [self.bulletComments removeObjectAtIndex:0];
    }
    return comment;
}

- (NSMutableArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithArray:@[@"老司机董路~~~~~~~",
                                                       @"金相凯~~~~~~~",
                                                       @"詹俊~~~~~~~",
                                                       @"阿部力 我为什么生活在这里",
                                                       @"绅士大概一分钟"]];
    }
    return _dataSource;
}

- (NSMutableArray *)bulletComments {
    if (!_bulletComments) {
        _bulletComments = [NSMutableArray array];
    }
    return _bulletComments;
}

- (NSMutableArray *)bulletViews {
    if (!_bulletViews) {
        _bulletViews = [NSMutableArray array];
    }
    return _bulletViews;
}

@end
