//
//  main.m
//  042-car
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Manager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        Car *car=[[Car alloc]init];
//        [car setNmae:@"BMW"];
//        [car setSpeed:22];
//        [car run];
        
        Manager *manager=[[Manager alloc]init];
        [manager setUserName:@"x"];
        [manager setPassword:@"1234"];
        BOOL result=[manager changePassword];
        if(result){
            [manager showInfo];
        }
    }
    return 0;
}
