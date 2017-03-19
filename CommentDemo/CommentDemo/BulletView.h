//
//  BulletView.h
//  CommentDemo
//
//  Created by Xin Qin on 3/18/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义一个枚举 来表明弹幕的三种状态 飞入 在屏幕中 飞出屏幕
typedef NS_ENUM(NSInteger, MoveStatus) {
    Start,
    Enter,
    End
};

@interface BulletView : UIView

@property (nonatomic, assign) int trajectory;           //弹道
@property (nonatomic, copy) void (^moveStatusBlock)(MoveStatus status);  //弹幕回掉状态

//初始化弹幕
- (instancetype) initWithComment: (NSString *)comment;

- (void) startAnimation;
- (void) stopAnimation;


@end
