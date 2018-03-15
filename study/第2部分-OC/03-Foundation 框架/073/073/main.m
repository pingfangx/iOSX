//
//  main.m
//  073
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建
    NSSet *set1=[[NSSet alloc]initWithObjects:@"a1",@"a2", nil];
    NSLog(@"set1 %@",set1);
    
    NSLog(@"setWithObjects %@",[NSSet setWithObjects:@"2",@"3", nil]);
    NSLog(@"setWithArray %@",[NSSet setWithArray:@[@"a",@"r"]]);
    
    
    NSLog(@"allObjects %@",[set1 allObjects]);
    NSLog(@"count %lu",(unsigned long)[set1 count]);
    NSLog(@"anyObject %@",[set1 anyObject]);
    
    
    NSLog(@"setWithObjects %@",[NSSet setWithObjects:@"2",@"3",@"2", nil]);
    return 0;
}
