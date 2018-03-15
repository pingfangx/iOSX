//
//  main.m
//  089
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    Dog *dog1=[[Dog alloc] init];
    dog1.name=@"小黑";
    NSLog(@"创建后 dog1 retain count %ld",[dog1 retainCount]);
    
    
    Person *p1=[[Person alloc] init];
    p1.name=@"张三";
    [p1 setDog: dog1];
    NSLog(@"赋给人后 dog1 retain count %ld",[dog1 retainCount]);
    
    [dog1 release];
    NSLog(@"狗 release 后 dog1 retain count %ld",[dog1 retainCount]);
    
    [p1 release];
    
    return 0;
}
