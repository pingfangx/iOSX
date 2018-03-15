//
//  Person.m
//  039
//
//  Created by pingfangx on 2017/8/31.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) intro{
    NSLog(@"intro by self,name is %@,age is %ld",_name,(long)_age);
}

- (void) intro:(NSString*) who{
    NSLog(@"intro to %@",who);
}

- (void)setName:(NSString *)name{
    _name=name;
}
- (void)setAge:(NSInteger)age{
    _age=age;
}

- (NSString*)getName{
    return _name;
}
- (NSInteger)getAge{
    return _age;
}


- (void)setName:(NSString*)name setAge:(NSInteger)age{
    _name=name;
    _age=age;
}

- (void)setName:(NSString*)name setName:(NSInteger)age{
    _name=name;
    _age=age;
}


- (void)setNameAndAge:(NSString*)name :(NSInteger)age{
    _name=name;
    _age=age;
}


+ (Person *)newPerson{
    Person *p=[[Person alloc] init];
    return p;
}

@end
