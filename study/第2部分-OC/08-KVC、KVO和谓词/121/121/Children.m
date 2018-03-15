//
//  Children.m
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Children.h"


@implementation Children:NSObject

- (id)init{
    self=[super init];
    if(self!=nil){
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)timerAction:(NSTimer *)timer{
    //可用
//    self.timeValue++;
    //也可用，注意要与 set 一起调用
    [self setTimeValue:++_timeValue];
    NSLog(@"timeVaule is %ld",_timeValue);
    if(self.timeValue==5){
        [[NSNotificationCenter defaultCenter] postNotificationName:@"onTimeValueChanged" object:self];
    }
}
@end
