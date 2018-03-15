//
//  main.m
//  093
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    NSMutableArray *array=[[NSMutableArray alloc] init];
    
    Dog *dog1=[[Dog alloc] init];
    Dog *dog2=[[Dog alloc] init];
    
    NSLog(@"retain count %ld,%ld",[dog1 retainCount],[dog2 retainCount]);
    
    [array addObject:dog1];
    [array addObject:dog2];
    
    NSLog(@"retain count %ld,%ld",[dog1 retainCount],[dog2 retainCount]);
    
    [dog1 release];
    [dog2 release];
    
    NSLog(@"retain count %ld,%ld",[dog1 retainCount],[dog2 retainCount]);
    
    [array removeObjectAtIndex:0];
    
    [array release];
    return 0;
}
