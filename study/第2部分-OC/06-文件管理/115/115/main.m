//
//  main.m
//  115
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filePath=[NSHomeDirectory() stringByAppendingPathComponent:@"1.txt"];
        NSString *targetFilePath=[NSHomeDirectory() stringByAppendingPathComponent:@"2.txt"];
        
        NSFileManager *fm=[NSFileManager defaultManager];
        if (![fm fileExistsAtPath:targetFilePath]){
            NSLog(@"create file %d",[fm createFileAtPath:targetFilePath contents:nil attributes:nil]);
        }
        
        
        NSFileHandle *read=[NSFileHandle fileHandleForReadingAtPath:filePath];
        
        NSFileHandle *write=[NSFileHandle fileHandleForWritingAtPath:targetFilePath];
        
//        NSData *readData=[read readDataToEndOfFile];
        NSData *readData=[read availableData];
        [write writeData:readData];
        
        [read closeFile];
        [write closeFile];
        
    }
    return 0;
}
