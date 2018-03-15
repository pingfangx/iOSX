//
//  main.m
//  046-Dog
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person=[[Person alloc]initWithName:@"x" dog:[[Dog alloc]initWithName:@"babydog" color:@"yellow"]];
        int time;
        do{
            NSLog(@"input time");
            scanf("%d",&time);
            [person walkDog:time];
        }while(time>=9&&time<=11);
    }
    return 0;
}
