//
//  main.m
//  107
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"start");
        NSString *homePath=NSHomeDirectory();
        
        NSArray *array=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
        
        
        NSArray *components=[homePath pathComponents];
        NSString *lastName=[homePath lastPathComponent];
        NSString *appendFilePath=[homePath stringByAppendingPathComponent:@"app.txt"];
        NSLog(@"sandbox path is %@",homePath);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
