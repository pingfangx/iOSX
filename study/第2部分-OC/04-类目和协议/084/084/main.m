//
//  main.m
//  084
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Student *student=[[Student alloc] init];
    [student finishTask];
    [student dontLate];
    if([student respondsToSelector:@selector(wearNeat)]){
        [student wearNeat];
    }
    [student study];
    return 0;
}
