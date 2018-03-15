//
//  main.m
//  105
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p =[[Person alloc] init];
        p.name=@"zhangsan";
        p.age=23;
        
        NSString *filePath=[NSHomeDirectory() stringByAppendingPathComponent:@"person.arc"];
        NSLog(@"resutl is %d",[NSKeyedArchiver archiveRootObject:p toFile:filePath]);
        
        Person *p2=[NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
        NSLog(@"read result is %@,age is %d",p2.name,p2.age);
        NSLog(@"%@",p2);
    }
    return 0;
}
