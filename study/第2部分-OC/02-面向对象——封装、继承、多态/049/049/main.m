//
//  main.m
//  049
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    Car *car=[[Car alloc]init];
    car->_name=@"车的名字";
    [car setCapcity:22];
    NSLog(@"名字:%@",car->_name);
    NSLog(@"capcity:%f",[car getCapcity]);
    return 0;
}
