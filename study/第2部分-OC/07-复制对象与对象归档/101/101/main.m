//
//  main.m
//  101
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        User *user1=[[User alloc] init];
        user1.age=22;
        NSLog(@"%d",user1.age);
        User *user2=[user1 copy];
        NSLog(@"%d",user2.age);
    }
    return 0;
}
