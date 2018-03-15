//
//  main.m
//  099
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array1=[NSMutableArray arrayWithObjects:@"1",@"2", nil];
        
        NSMutableArray *array2=[array1 retain];
        NSLog(@"相等 %d",array1==array2);
        array2=[array1 copy];
        NSLog(@"相等 %d",array1==array2);
        //新的 array 引用计数为 1，因为是新创建的
        NSLog(@"count 1 =%ld,count 2=%ld",[array1 retainCount],[array2 retainCount]);
        //错误，不可变
//        [array2 addObject:@"3"];
        array2=[array1 mutableCopy];
        [array2 addObject:@"3"];
        NSLog(@"%@",array2);
        
        NSNumber *num=@123;
        //错误，NSNumber 没有实现 mutableCopy 协议
//        [num mutableCopy];
    }
    return 0;
}
