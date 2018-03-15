//
//  main.m
//  094
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    //不需要添加，会自动添加进 pool，也可以使用 @autoreleasepool，但好像不能一起用
    
    Dog *dog1=[[Dog alloc] init];
    //出错，要对应，不能多次 release
//    [dog1 release];
    NSAutoreleasePool *pool=[[NSAutoreleasePool alloc] init];
    
    //这个要写在 *pool 后面才生效
    [dog1 autorelease];
    Dog *dog2=[[Dog alloc] init];
    [dog2 autorelease];
    NSLog(@"retain count %ld",[dog1 retainCount]);
    [pool release];
    return 0;
}
