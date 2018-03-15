//
//  main.m
//  103
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray *array1=[NSArray arrayWithObjects:@"zhangsan",@"lisi",@"中文", nil];
//        NSString *filePath=[NSHomeDirectory() stringByAppendingPathComponent:@"array.arc"];
//        BOOL result=[NSKeyedArchiver archiveRootObject:array1 toFile:filePath];
//        NSLog(@"save result %d",result);
//        
//        //解归档
//        NSArray *array2=[NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
//        NSLog(@"read result %@",array2);
        
        
        NSArray *array1=[NSArray arrayWithObjects:@"zhangsan",@"lisi",@"中文", nil];
        NSMutableData *data=[NSMutableData data];
        NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        [archiver encodeObject:array1 forKey:@"array"];
        [archiver encodeInt:100 forKey:@"scope"];
        [archiver encodeObject:@"jack" forKey:@"name"];
        
        [archiver finishEncoding];
        
        NSString *filePath=[NSHomeDirectory() stringByAppendingPathComponent:@"ar.text"];
        BOOL result=[data writeToFile:filePath atomically:YES];
        NSLog(@"result is %d",result);
        
        NSData *readData=[[NSData alloc] initWithContentsOfFile:filePath];
        NSKeyedUnarchiver *unarchiver=[[NSKeyedUnarchiver alloc] initForReadingWithData:readData];
        NSLog(@"%@",[unarchiver decodeObjectForKey:@"array"]);
        NSLog(@"%d",[unarchiver decodeIntForKey:@"scope"]);
        NSLog(@"%@",[unarchiver decodeObjectForKey:@"name"]);
    }
    return 0;
}
