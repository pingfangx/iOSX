//
//  main.m
//  116
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[[Person alloc] init];
        NSLog(@"%@",p);
        [p setValue:@"jack" forKey:@"name"];
        NSLog(@"%@",p);
        [p setValue:@"jack2" forKey:@"_name"];
        NSLog(@"%@",p);
        
        NSLog(@"%@",[p valueForKey:@"name"]);
        NSLog(@"%@",[p valueForKey:@"_name"]);
        
        NSLog(@"不带下划线");
        [p setValue:@"jack3" forKey:@"name"];
        NSLog(@"%@",[p valueForKey:@"name"]);
        NSLog(@"带下划线");
        [p setValue:@"jack4" forKey:@"_name"];
        NSLog(@"%@",[p valueForKey:@"_name"]);
        
        [p setValue:@"123" forKey:@"age"];
        NSLog(@"%@",[p valueForKey:@"age"]);
    }
    return 0;
}
