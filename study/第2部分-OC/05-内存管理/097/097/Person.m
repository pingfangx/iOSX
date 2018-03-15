//
//  Person.m
//  097
//
//  Created by pingfangx on 2018/3/23.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (id) personWithName:(NSString *)name{
    Person *person=[[self alloc] init];
    person->_name=name;
    return [person autorelease];
}

- (void)dealloc{
    NSLog(@"person dealloc");
    [super dealloc];
}
@end
