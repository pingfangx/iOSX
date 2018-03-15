//
//  Car.m
//  051
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setBrand:(NSString *)brand{
    _brand=brand;
}
- (void)setColor:(NSString *)color{
    _color=color;
}

- (void) brake{
    NSLog(@"刹车了");
}

- (void) quicken{
    NSLog(@"加速了");
}
@end
