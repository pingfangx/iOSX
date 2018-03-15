//
//  main.m
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
#import "Nurse.h"
#import "Nanny.h"

int main(int argc, const char * argv[]) {
    Children *children=[[Children alloc] init];
    Nurse *nurse=[[Nurse alloc] init];
    
    [children setDelegate:nurse];
    
    Children *children2=[[Children alloc] init];
    Nanny *nanny=[[Nanny alloc]init];
    
    [children2 setDelegate:nanny];
    
    [[NSRunLoop currentRunLoop] run];
    return 0;
}
