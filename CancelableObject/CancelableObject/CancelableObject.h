//
//  CancelableObject.h
//  CancelableObject
//
//  Created by Xin Qin on 1/10/17.
//  Copyright © 2017 Xin Qin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Block)();

@interface CancelableObject : NSObject 

- (id)initWithBlock:(Block)block;
- (void)start;
- (void)cancel;

@end
