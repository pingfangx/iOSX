//
//  main.m
//  086
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p=[[Person alloc]init];
    NSLog(@"count %ld",[p retainCount]);
    [p retain];
    NSLog(@"count %ld",[p retainCount]);
    [p retain];
    NSLog(@"count %ld",[p retainCount]);
    
    [p release];
    NSLog(@"count %ld",[p retainCount]);
    [p release];
    NSLog(@"count %ld",[p retainCount]);
    //这里输出销
    [p release];
    //这里输出为 1 又引用了
    NSLog(@"count %ld",[p retainCount]);
    return 0;
}
