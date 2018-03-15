//
//  Student.m
//  084
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Student.h"

@implementation Student : NSObject
- (void)study{
    NSLog(@"study");
}

# pragma mark - 协议方法
- (void)finishTask{
    NSLog(@"finishTask");
}

- (void)dontLate{
    NSLog(@"dontLate");
}
#warning 待补充
- (void)wearNeat{
    NSLog(@"wearNeat");
}
@end
