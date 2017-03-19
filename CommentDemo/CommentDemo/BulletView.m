//
//  BulletView.m
//  CommentDemo
//
//  Created by Xin Qin on 3/18/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import "BulletView.h"

#define Padding 10
#define AvatarHeight 30

@interface BulletView()

@property (nonatomic, strong) UILabel *lbComment;
@property (nonatomic, strong) UIImageView *avatar;

@end

@implementation BulletView

- (instancetype) initWithComment: (NSString *)comment {
    if (self == [super init]) {
        self.backgroundColor = [UIColor blueColor];
        
        self.layer.cornerRadius = 15;
        
        NSDictionary *dict = @{NSFontAttributeName: [UIFont systemFontOfSize:14]};
        CGFloat width = [comment sizeWithAttributes: dict].width;
        self.bounds = CGRectMake(0, 0, width + Padding * 2 + AvatarHeight, 30);
        
        self.lbComment.text = comment;
        self.lbComment.frame = CGRectMake(Padding + AvatarHeight, 0, width, 30);
        
        self.avatar.frame = CGRectMake(-Padding, -Padding, AvatarHeight + Padding, AvatarHeight + Padding);
        self.avatar.layer.cornerRadius = (AvatarHeight + Padding) / 2;
        self.avatar.layer.borderColor = [UIColor redColor].CGColor;
        self.avatar.layer.borderWidth = 1;
        self.avatar.image = [UIImage imageNamed:@"avatar.jpg"];
        
    }
    
    return self;
}

- (void) startAnimation {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat duration = 4.0f;
    CGFloat wholeWidth = screenWidth + CGRectGetWidth(self.bounds);
    
    if (self.moveStatusBlock) {
        self.moveStatusBlock(Start);
    }
    
    //计算enterDuration
    CGFloat speed = wholeWidth / duration;
    //完全飞入屏幕
    CGFloat enterDuration = CGRectGetWidth(self.bounds) / speed;
    
    //GCD没有办法中途停止
    [self performSelector:@selector(enterScreen) withObject: nil afterDelay:enterDuration];
    
    __block CGRect frame = self.frame;
    [UIView animateWithDuration:duration delay: 0 options: UIViewAnimationOptionCurveLinear animations:^{
        frame.origin.x -= wholeWidth;
        self.frame = frame;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        if (self.moveStatusBlock ) {
            self.moveStatusBlock(End);
        }
    }];
    
}

- (void)enterScreen {
    if (self.moveStatusBlock) {
        self.moveStatusBlock(Enter);
    }
}

- (void) stopAnimation {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self.layer removeAllAnimations];
    [self removeFromSuperview];
}

- (UILabel *)lbComment {
    if (!_lbComment) {
        _lbComment = [[UILabel alloc] initWithFrame:CGRectZero];
        _lbComment.textAlignment = NSTextAlignmentCenter;
        _lbComment.font = [UIFont systemFontOfSize:14];
        _lbComment.textColor = [UIColor whiteColor];
        
        [self addSubview:_lbComment];
    }
    return _lbComment;
}

- (UIImageView *)avatar {
    if (!_avatar) {
        _avatar = [[UIImageView alloc] init];
        _avatar.clipsToBounds = YES;
        _avatar.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:_avatar];
    }
    return _avatar;
}

@end
