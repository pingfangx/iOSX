//
//  main.m
//  113
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path=[NSHomeDirectory() stringByAppendingPathComponent:@"1.txt"];
        NSFileHandle *write=[NSFileHandle fileHandleForWritingAtPath:path];
//        NSString *content=@"1345";
//        NSLog(@"write content %d",[content writeToFile:path atomically:TRUE encoding:NSUTF8StringEncoding error:nil]);
        //设置到末尾
        [write seekToEndOfFile];
        NSData *data=[@"012" dataUsingEncoding:NSUTF8StringEncoding];
        [write writeData:data];
        [write closeFile];
        NSFileHandle *read=[NSFileHandle fileHandleForReadingAtPath:path];
        NSLog(@"after write %@",[[NSString alloc]initWithData:[read readDataToEndOfFile] encoding:NSUTF8StringEncoding]);
        [read closeFile];
        
        //定位读取
        NSFileHandle *readHandle= [NSFileHandle fileHandleForReadingAtPath:path];
        NSFileManager *fm=[NSFileManager defaultManager];
        NSDictionary *attr=[fm attributesOfItemAtPath:path error:nil];
        long fileSize=[[attr objectForKey:NSFileSize] longValue];
        [readHandle seekToFileOffset:fileSize/2];
        NSData *readData=[readHandle readDataToEndOfFile] ;
        NSLog(@"%@",[[NSString alloc]initWithData: readData encoding:NSUTF8StringEncoding]);
    }
    return 0;
}
