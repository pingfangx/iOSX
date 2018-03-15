//
//  main.m
//  106
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //这个各后面的 share 相同，不知是否是有优化
        NSLog(@"%p",[[AddressBook alloc]init]);
        NSLog(@"%p",[AddressBook shareInstance]);
        NSLog(@"%p",[AddressBook shareInstance]);
        NSLog(@"%p",[AddressBook shareInstance]);
        NSLog(@"%p",[[AddressBook alloc]init]);
    }
    return 0;
}
