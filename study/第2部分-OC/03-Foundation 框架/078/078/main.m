//
//  main.m
//  078
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSDate *date1=[NSDate date];
    NSLog(@"%@",date1);
    NSLog(@"%@",[[[NSDate alloc] init] description]);
    
    NSDate *date2=[NSDate dateWithTimeIntervalSinceNow:24*60*60];
    NSLog(@"dateWithTimeIntervalSinceNow %@",date2);
    
    NSDate *date1970=[NSDate dateWithTimeIntervalSince1970:0];
    NSLog(@"1970 %@",date1970);
    
    //时间戳
    NSTimeInterval timeInterval=[[NSDate date] timeIntervalSince1970];
    NSLog(@"timeIntervale %f",timeInterval);
    
    //日期的比校
    NSLog(@"%ld",[date1 compare:date2]);
    NSLog(@"%d",[date1 timeIntervalSince1970] <[date2 timeIntervalSince1970]);
    
    
    //格式化
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH:mm:ss zz"];
    NSLog(@"stringFromDate %@",[formatter stringFromDate:date1]);
    
    //时区
    NSTimeZone *timeZone=[NSTimeZone timeZoneWithName:[[NSTimeZone knownTimeZoneNames] objectAtIndex:0]];
    [formatter setTimeZone:timeZone];
    NSLog(@"stringFromDate %@",[formatter stringFromDate:date1]);
    
    //转为日期对象
    NSLog(@"%@",[formatter dateFromString:@"1840年2月2日 15:24:24 GMT"]);
    return 0;
}
