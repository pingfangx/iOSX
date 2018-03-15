//
//  User.h
//  092
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject{
    NSString *_password;
}
/*
 生成带下划线的属性，自己加上也可以
 生成 get set 方法
 已经带着下划线，会再加上
 */
@property(nonatomic,copy,readwrite) NSString *_userName;
- (void)showInfo;
@end
