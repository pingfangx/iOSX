//
//  main.m
//  063
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str1=@"hello";
    NSString *str2=[[NSString alloc]initWithString:@"hello"];
    NSString *str3=[[NSString alloc]initWithFormat:@"%@ world",str2];
    NSString *str4=[[NSString alloc]initWithFormat:@"%@",str2];
    NSString *str5=[[NSString alloc]initWithFormat:@"%@",str2];
    NSLog(@"%@", str1);
    NSLog(@"%@", str2);
    NSLog(@"%@", str3);
    NSLog(@"%@ %s", str3,"test");
    
    //这里是相等的，可能是复用优化
    NSLog(@"%d",str1==str2);
    NSLog(@"%d",[str1 isEqualToString:str2]);
    
    //这里不相等，地址不一样
    NSLog(@"%d",str1==str4);
    NSLog(@"%d",[str1 isEqualToString:str4]);
    
    //这里相等，地址一样，课件上的不一样，不知为什么
    NSString *str6=[[NSString alloc]initWithFormat:@"abc"];
    NSString *str7=[[NSString alloc]initWithFormat:@"abc"];
    NSLog(@"6,7,%d",str6==str7);
    
    NSLog(@"stringWithString %@",[NSString stringWithString:@"abc"]);
    //比较
    
    NSLog(@"caseInsensitiveCompare %ld",(long)[@"A" caseInsensitiveCompare:@"a"]);
    NSLog(@"compare %ld",(long)[@"A" compare:@"a"]);
    NSLog(@"length %ld",[@"平方X" length]);
    
    NSLog(@"upper %@", [@"heLLo" uppercaseString]);
    NSLog(@"lower %@", [@"heLLo" lowercaseString]);
    NSLog(@"capitalizedString %@", [@"heLLo" capitalizedString]);
    
    NSLog(@"floatValue %f",[@"3.14" floatValue]);
    
    //截取
    NSLog(@"substringToIndex %@",[@"abcdef" substringToIndex:3]);
    NSLog(@"substringFromIndex %@",[@"abcdef" substringFromIndex:3]);
    NSRange range=NSMakeRange(1, 4);
    NSRange range2={1,3};
    NSLog(@"substringWithRange %@",[@"abcdef" substringWithRange:range2]);
    
    //追加
    NSLog(@"stringByAppendingString %@",[@"abc" stringByAppendingString:@"123"]);
    NSLog(@"stringByAppendingFormat %@",[@"abc" stringByAppendingFormat:@"%06d",123]);
    
    //查找
    NSLog(@"rangeOfString %ld",[@"abc" rangeOfString:@"a"].location);
    NSLog(@"rangeOfString %ld",[@"abc" rangeOfString:@"e"].location);
    
    
    NSLog(@"characterAtIndex %c",[@"abc" characterAtIndex:2]);
    
    //可变字符串
    NSMutableString *ms1=[[NSMutableString alloc]initWithString:@"abc"];
    NSLog(@"NSMutableString %@",ms1);
    [ms1 insertString:@"3" atIndex:1];
    NSLog(@"insertString %@",ms1);
    [ms1 appendString:@"后"];
    NSLog(@"appendString %@",ms1);
    [ms1 deleteCharactersInRange:NSMakeRange(0, 1)];
    NSLog(@"deleteCharactersInRange %@",ms1);
    [ms1 replaceCharactersInRange:NSMakeRange(0, 1) withString:@"替换"];
    NSLog(@"deleteCharactersInRange %@",ms1);
    
    return 0;
}
