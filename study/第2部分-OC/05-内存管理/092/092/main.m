//
//  main.m
//  092
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[]) {
    User *user=[[User alloc] init];
    [user set_userName:@"测名"];
    [user showInfo];
    return 0;
}
