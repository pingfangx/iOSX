//
//  Car.h
//  042-car
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    NSString * _name;
    float _speed;
}

- (void)setNmae:(NSString *)name;
- (void)setSpeed:(float)speed;

- (void) run;

@end
