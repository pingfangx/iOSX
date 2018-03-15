//
//  main.m
//  043
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p=[[Person alloc]initWithName:@"x"];
        [p showInfo];
        
        Person *p2=[[Person alloc]initWithName:@"x" withAge:22];
        [p2 showInfo];
    }
    return 0;
}
