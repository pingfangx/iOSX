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
    timeValue++;
    if(timeValue==5){
        [_delegate wash:self];
    }
    if(timeValue==10){
        [_delegate play:self];
    }
}
- (void)setDelegate:(id<ChildrenDelegate>)delegate{
    _delegate=delegate;
}
@end
