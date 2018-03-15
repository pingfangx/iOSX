//
//  main.m
//  100
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p=[[Person alloc] init];
        [p setName:@"123"];
        
        NSMutableArray *array1=[NSMutableArray arrayWithCapacity:1];
        [array1 addObject:p];
        NSLog(@"array 1 %@",array1);
        NSMutableArray *array2=[array1 mutableCopy];
        NSLog(@"array 2 %@",array2);
        NSLog(@"--------------------");
        [p setName:@"456"];
        NSLog(@"array 1 %@",array1);
        NSLog(@"array 2 %@",array2);
    }
    return 0;
}
