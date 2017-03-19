//
//  BulletManager.h
//  CommentDemo
//
//  Created by Xin Qin on 3/18/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BulletView;

@interface BulletManager : NSObject

@property (nonatomic, copy) void(^generateViewBlock)(BulletView *view);

//弹幕开始
- (void)start;

//弹幕结束
- (void)stop;

@end
