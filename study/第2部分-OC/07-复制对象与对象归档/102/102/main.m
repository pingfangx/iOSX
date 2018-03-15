//
//  main.m
//  102
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[[Person alloc]init];
        NSMutableString *name=[NSMutableString stringWithString:@"jack"];
        p.name=name;
        NSLog(@"name is %@",p.name);
        [name appendString:@"-tom"];
        NSLog(@"name is %@",p.name);
        
        NSArray *array1=@[@"1"];
        //这里的 copy 会使引用计数加1，执行的 retain
        NSArray *array2=[array1 copy];
        NSLog(@"array1 == array2:%d",array1==array2);
        //实际的拷贝
        array2=[array1 mutableCopy];
        NSLog(@"array1 == array2:%d",array1==array2);
    }
    return 0;
}
