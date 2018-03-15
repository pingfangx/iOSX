//
//  Person.m
//  098
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person

- (void)dealloc{
    NSLog(@"person dealloc");
    [_dog release];
    [super dealloc];
}
@end
