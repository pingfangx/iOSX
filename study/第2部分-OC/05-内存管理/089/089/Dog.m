//
//  Dog.m
//  089
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)setName:(NSString *)name{
    _name=name;
}
- (NSString *)getName{
    return _name;
}


- (void)dealloc{
    NSLog(@"%@ dealloc",_name);
    [super dealloc];
}

@end
