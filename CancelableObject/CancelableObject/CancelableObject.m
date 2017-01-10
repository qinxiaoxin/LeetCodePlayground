//
//  CancelableObject.m
//  CancelableObject
//
//  Created by Xin Qin on 1/10/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import "CancelableObject.h"

@implementation CancelableObject {
    BOOL _isCanceled;
    Block _block;
}

- (id)initWithBlock:(Block)block {
    self = [super init];
    
    if (self) {
        _isCanceled = NO;
        _block = block;
    }
    
    return self;
    
}

- (void)start {
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        if (weakSelf) {
            __strong typeof(self) strongSelf = self;
            if (!strongSelf->_isCanceled) {
                strongSelf -> _block();
            }
        }
    });
    
}

- (void)cancel {
    _isCanceled = YES;
}



@end
