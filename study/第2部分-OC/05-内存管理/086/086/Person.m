//
//  Person.m
//  086
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc{
    NSLog(@"销毁");
    [super dealloc];
}
@end
