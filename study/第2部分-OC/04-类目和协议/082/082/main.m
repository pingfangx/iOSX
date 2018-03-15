//
//  main.m
//  082
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ExtensionString.h"

int main(int argc, const char * argv[]) {
    Person *p=[[Person alloc] init];
    [p work];
    
    NSLog(@"%@",[@"abcde" revert]);
    return 0;
}
