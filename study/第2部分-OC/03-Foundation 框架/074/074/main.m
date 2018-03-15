//
//  main.m
//  074
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSDictionary *d1=[[NSDictionary alloc]initWithObjectsAndKeys:@"a",@"1",@"b",@"2", nil];
    NSLog(@"NSDictionary %@",d1);
    
    NSLog(@"%@",[NSDictionary dictionaryWithObject:@"value" forKey:@"key"]);
    
    NSLog(@"allKeys %@",d1.allKeys);
    NSLog(@"allValues %@",d1.allValues);
    
    
    NSLog(@"objectForKey %@",[d1 objectForKey:@"1"]);
    
    NSLog(@"NSDictionary %@",@{@"1":@"aa",@"2":@"bb"});

    
    NSLog(@"objectForKey %@",d1[@"2"]);
    
    NSMutableDictionary *md=[[NSMutableDictionary alloc]initWithDictionary:d1];
    NSLog(@"NSMutableDictionary %@",md);
    
    [md setObject:@"cc" forKey:@"3"];
    NSLog(@"setObject %@",md);
    
    [md removeObjectForKey:@"3"];
    NSLog(@"removeObjectForKey %@",md);
    
    [md removeAllObjects];
    NSLog(@"removeAllObjects %@",md);
    
    for (NSString *key in d1) {
        NSLog(@"key=%@,value=%@",key,d1[key]);
    }
    NSArray *keys=d1.allKeys;
    for (int i=0; i<keys.count; i++) {
        NSLog(@"i=%d,key=%@,value=%@",i,keys[i],d1[keys[i]]);
    }
    return 0;
}
