//
//  Person.m
//  089
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setDog:(Dog *)dog{
    //为1
//    _dog=dog;
    //为3，加了 2 次
//    _dog=[dog retain];
    //有问题如果 dog 与 _dog 指向同一个
//    [_dog release];
//    _dog=[dog retain];
    if(_dog!=dog){
        [_dog release];
        _dog=[dog retain];
    }
}
- (Dog *)getDog{
    return _dog;
}
- (void)setName:(NSString *)name{
    _name=name;
}
- (NSString *)getName{
    return _name;
}

- (void)dealloc{
    [_dog release];
    NSLog(@"%@ 销毁",_name);
    [super dealloc];
}
@end
