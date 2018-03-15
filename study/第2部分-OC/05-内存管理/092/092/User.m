//
//  User.m
//  092
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "User.h"

@implementation User

//可以修改名字
@synthesize _userName=_userName;

- (void)showInfo{
    NSLog(@"_userName is %@",_userName);
}
@end
