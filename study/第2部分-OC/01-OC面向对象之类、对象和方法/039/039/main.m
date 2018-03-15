//
//  main.m
//  039
//
//  Created by pingfangx on 2017/8/31.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        Person *person=[Person alloc];
//        person=[person init];
//        [person intro];
//        
//        [person setName:@"X"];
//        [person setAge:22];
//        [person intro];
//        
//        NSString *name=@"名字";
//        [person intro:name];
        
        Person *person=[Person alloc];
        person=[person init];
        [person intro];
        
        [person setName:@"x" setAge:22];
        [person intro];
        
        
        [person setName:@"xx" setName:23];
        [person intro];
        
        [person setName:@"x" setName:24];
        [person intro];
        
        Person *person2=[Person newPerson];
        [person2 intro];
        
        NSLog(@"%@",nil);
    }
    return 0;
}
