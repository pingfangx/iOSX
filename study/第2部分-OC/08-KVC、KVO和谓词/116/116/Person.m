//
//  Person.m
//  116
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person
- (NSString *)getName{
    NSLog(@"get");
    return _name;
}
- (void)setName:(NSString *)name{
    NSLog(@"set");
    _name=name;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"name is %@",_name];
}
@end
