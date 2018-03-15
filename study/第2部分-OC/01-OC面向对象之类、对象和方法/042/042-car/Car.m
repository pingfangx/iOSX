//
//  Car.m
//  042-car
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Car.h"

@implementation Car


- (void)setNmae:(NSString *)name{
    _name=name;
}
- (void)setSpeed:(float)speed{
    _speed=speed;
}

- (void) run{
    NSLog(@"%@ run speed is %0.2f",_name,_speed);
}

@end
