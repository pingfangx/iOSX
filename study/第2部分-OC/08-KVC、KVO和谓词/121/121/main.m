//
//  main.m
//  121
//
//  Created by pingfangx on 2018/3/27.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
#import "Nurse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Children *children=[[Children alloc] init];
        Nurse *nurse=[[Nurse alloc] init];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
