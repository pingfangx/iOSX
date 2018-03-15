//
//  User.m
//  101
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "User.h"

@implementation User

- (id)copyWithZone:(nullable NSZone *)zone{
    //错误，要考虑类型
//    [User allocWithZone:zone];
    User *copyUser=[[self class] allocWithZone:zone];
//    copyUser.age=_age;
    copyUser.age=self.age;
    return copyUser;
}
@end
