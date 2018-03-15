//
//  Person.m
//  123
//
//  Created by pingfangx on 2018/3/27.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (id) personWithName:(NSString *)name andAge:(NSUInteger)age{
    Person *p=[[Person alloc] init];
    p.name=name;
    p.age=age;
    
    return p;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"name %@,age %ld",_name,_age];
}

@end
