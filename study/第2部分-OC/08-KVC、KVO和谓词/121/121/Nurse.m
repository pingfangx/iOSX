//
//  Nurse.m
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Nurse.h"
#import "Children.h"

@implementation Nurse


- (id) init{
    self=[super init];
    if(self!=nil){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationAction:) name:@"onTimeValueChanged" object:nil];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"keyPath is %@,changes is %@,context is %@",keyPath,[change valueForKey:@"new"],context);
    if([[change valueForKey:@"new"] intValue]==5){
        NSLog(@"play");
    }
}

- (void)notificationAction:(NSNotification *)notification{
    NSLog(@"收到了通知 %@",notification);
    Children *child=notification.object;
    [child setTimeValue:0];
}

- (void)wash:(Children *)children{
    NSLog(@"Nurse wash");
}

- (void)play:(Children *)children{
    NSLog(@"Nurse play");
}

- (void)dealloc{
    //移除通知
//    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"onTimeValueChanged" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [super dealloc];
}
@end
