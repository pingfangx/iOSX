//
//  main.m
//  060
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    NSObject *obj1=[[NSObject alloc]init];
    NSObject *obj2=[[NSObject alloc]init];
    if ([obj1 isEqual:obj2]){
        NSLog(@"obj1 == obj2");
    }else{
        NSLog(@"obj1 != obj2");
    }
    if ([obj1 isEqualTo:obj2]){
        NSLog(@"obj1 == obj2");
    }else{
        NSLog(@"obj1 != obj2");
    }
    
    if (obj1==obj2){
        NSLog(@"obj1 == obj2");
    }else{
        NSLog(@"obj1 != obj2");
    }
    
    Person *p=[[Person alloc]init];
    [p demo1];
    [p demo2:@"22"];
    
    [p performSelector:@selector(demo1)];
    
    [p performSelector:@selector(demo2:) withObject:@"33"];
    
    [p performSelector:@selector(demo1) withObject:NULL afterDelay:2.5];
    [[NSRunLoop currentRunLoop]run];
    
    return 0;
}
