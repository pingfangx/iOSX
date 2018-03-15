//
//  main.m
//  108
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path=@"/Users/apple/file.txt";
        NSLog(@"pathComponents %@",[path pathComponents]);
        NSLog(@"lastPathComponent %@",[path lastPathComponent]);
        NSLog(@"stringByAppendingString %@",[path stringByAppendingString:@"append.txt"]);
        NSLog(@"stringByAppendingPathComponent %@",[path stringByAppendingPathComponent:@"append.txt"]);
        NSLog(@"stringByAppendingString %@",[path stringByAppendingString:@"/append.txt"]);
        NSLog(@"stringByAppendingPathComponent %@",[path stringByAppendingPathComponent:@"/append.txt"]);
        
        NSLog(@"stringByDeletingLastPathComponent %@",[path stringByDeletingLastPathComponent]);
        NSLog(@"stringByDeletingPathExtension %@",[path stringByDeletingPathExtension]);
        NSLog(@"pathExtension %@",[path pathExtension]);
        NSLog(@"stringByAppendingPathExtension %@",[path stringByAppendingPathExtension:@"jpg"]);
        NSLog(@"stringByAppendingPathExtension %@",[path stringByAppendingPathExtension:@".jpg"]);
        
        NSString *str=@"a你好";
        NSData *data=[str dataUsingEncoding:NSUTF8StringEncoding];
        NSString *str2=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"str2=%@",str2);
        
        NSMutableData *mutableData;
    }
    return 0;
}
