//
//  XXProtocol.h
//  084
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol XXProtocol <NSObject>

@required
- (void)finishTask;

- (void)dontLate;

@optional
- (void)wearNeat;

@end
