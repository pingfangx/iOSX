//
//  main.m
//  080
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSArray *array=@[];
    @try {
        [array objectAtIndex:0];
    } @catch (NSException *exception) {
        NSLog(@"%@",exception);
    } @finally {
    }
    return 0;
}
