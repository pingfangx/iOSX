//
//  main.m
//  097
//
//  Created by pingfangx on 2018/3/23.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person=[Person personWithName:@"张三"];
        NSLog(@"%@",person);
        [person release];
        
        NSString *string1=[NSString stringWithFormat:@"ss"];
        
        NSArray *array1=[NSArray array];
        //使用新语法创建的对象，已经加入到自动释放池
        NSArray *array2=@[@"xx"];
        NSNumber *number=@100;
        NSString *string2=@"xxx";
        
    }
    return 0;
}
