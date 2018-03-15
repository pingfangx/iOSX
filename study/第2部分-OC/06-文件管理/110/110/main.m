//
//  main.m
//  110
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建
        NSString *homePath=NSHomeDirectory();
        NSString *filePath=[homePath stringByAppendingPathComponent:@"documents/file.txt"];
        NSLog(@"%@",filePath);
        
        
        NSString *string=@"测试文件";
        NSData *data=[string dataUsingEncoding:NSUTF8StringEncoding];
        
        NSFileManager *fm=[NSFileManager defaultManager];
        BOOL result=[fm createFileAtPath:filePath contents:data attributes:nil];
        NSLog(@"result is %d",result);
        
        NSString *demo=[homePath stringByAppendingPathComponent:@"demo"];
        NSError *error;
        BOOL result2=[fm createDirectoryAtPath:demo withIntermediateDirectories:YES attributes:nil error:&error];
        if(!result2){
            NSLog(@"失败%@",error);
        }
        NSLog(@"result2 is %d",result2);
        
        //读
        NSData *readData=[fm contentsAtPath:filePath];
        NSString *readString=[[NSString alloc] initWithData:readData encoding:NSUTF8StringEncoding];
        NSLog(@"read string %@",readString);
        
        //移动
        NSString *targetPath=[demo stringByAppendingPathComponent:@"file2.txt"];
        BOOL result3=[fm moveItemAtPath:filePath toPath:targetPath error:nil];
        NSLog(@"result 3 is %d",result3);
        
        //复制
        NSString *targetPath3=[demo stringByAppendingPathComponent:@"file3.txt"];
        BOOL result4=[fm copyItemAtPath:targetPath toPath:targetPath3 error:nil];
        NSLog(@"result 4 is %d",result4);
        
        //删除
        if([fm fileExistsAtPath:targetPath3]){
            BOOL result5=[fm removeItemAtPath:targetPath3 error:nil];
            NSLog(@"result 5 is %d",result5);
        }
        
        //文件大小
        NSLog(@"attributes %@",[fm attributesOfItemAtPath:targetPath error:nil]);
        
        NSData *data2=[fm contentsAtPath:targetPath];
        NSLog(@"data2 size %ld",data2.length);
    }
    return 0;
}
