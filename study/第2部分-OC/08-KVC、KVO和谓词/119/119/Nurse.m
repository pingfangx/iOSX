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


- (id) initWithChildren:(Children *)children{
    self=[super init];
    if(self!=nil){
        _children=children;
        [_children addObserver:self forKeyPath:@"timeValue" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"参数"];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"keyPath is %@,changes is %@,context is %@",keyPath,[change valueForKey:@"new"],context);
    if([[change valueForKey:@"new"] intValue]==5){
        NSLog(@"play");
    }
}

- (void)wash:(Children *)children{
    NSLog(@"Nurse wash");
}

- (void)play:(Children *)children{
    NSLog(@"Nurse play");
}

- (void)dealloc{
    [_children removeObserver:self forKeyPath:@"timeValue"];
//    [super dealloc];
}
@end
