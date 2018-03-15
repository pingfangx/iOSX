//
//  main.m
//  081
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExtensionString.h"
int main(int argc, const char * argv[]) {
    NSLog(@"%hhd",[@"123@qq.com" validateEmail]);
    NSLog(@"%hhd",[@"123qq.com" validateEmail]);
    return 0;
}
