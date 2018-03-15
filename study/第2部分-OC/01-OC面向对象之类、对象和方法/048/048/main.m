//
//  main.m
//  048
//
//  Created by pingfangx on 2018/3/15.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
//2 次 import 正常
//#import "Car.h"
//#import "Car.h"

//2 次 include 失败
//#include "car.h"
#include "car.h"
int main(int argc, const char * argv[]) {
    Car *car=[[Car alloc]init];
    [car run];
    return 0;
}
