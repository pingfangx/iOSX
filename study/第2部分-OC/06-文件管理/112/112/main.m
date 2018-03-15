//
//  main.m
//  112
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string=@"12345";
        NSString *path=[NSHomeDirectory() stringByAppendingPathComponent:@"1.txt"];
        
        NSLog(@"writeToFile result %d",[string writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil]);
        
        NSString *readString=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"read string is %@",readString);
        
        NSData *data=[[NSData alloc] initWithContentsOfFile:path];
        NSLog(@"data is %@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
        
        //属性列表文件，plist
        NSString *path2=[NSHomeDirectory() stringByAppendingPathComponent:@"array.plist"];
        
        NSArray *array=@[@"12",@"34"];
        NSLog(@"array write %d",[array writeToFile:path2 atomically:YES]);
        
        NSArray *readArray=[[NSArray alloc] initWithContentsOfFile:path2];
        NSLog(@"%@",readArray);
        
        //字典
        NSDictionary *dict=@{@"1":@"11",@"2":@22.5};
        NSString *dictPath=[NSHomeDirectory() stringByAppendingPathComponent:@"dict.plist"];
        NSLog(@"dict write %d",[dict writeToFile:dictPath atomically:YES]);
        NSLog(@"read dict %@",[[NSDictionary alloc] initWithContentsOfFile:dictPath]);
    }
    return 0;
}
