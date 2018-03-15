//
//  Person.m
//  082
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"
//延展
@interface Person(private)
- (void)_showInfo;
@end

@implementation Person{
    NSString *privateName;
}

- (void)work{
    [self _showInfo];
    NSLog(@"work");
}

- (void) _showInfo{
    NSLog(@"show info");
}
@end
