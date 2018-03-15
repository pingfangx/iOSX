//
//  main.m
//  076
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建
    NSNumber *num1=[NSNumber numberWithInt:123];
    
    NSLog(@"numberWithFloat %@",[NSNumber numberWithFloat:1.5]);
    NSLog(@"numberWithBool %@",[NSNumber numberWithBool:YES]);
    
    //解包
    NSLog(@"charValue %c",[[NSNumber numberWithChar:'a'] charValue]);
    NSLog(@"优化 %@",@23.45);
    
    NSRange range={1,5};
    NSValue *rangeValue=[NSValue valueWithRange:range];
    NSLog(@"valueWithRange %@",rangeValue);
    NSLog(@"rangeValue.length %lu",(unsigned long)[rangeValue rangeValue].length);
    
    //自定义结构体
    struct XXPoint{
        float x;
        float y;
    };
    struct XXPoint p={123,456};
    NSValue *xxPointValue=[NSValue value:&p withObjCType:@encode(struct XXPoint)];
    struct XXPoint p2;
    [xxPointValue getValue:&p2];
    NSLog(@"p2,x=%f,y=%f",p2.x,p2.y);
    
    //NSNULL
    NSNull *null=[NSNull null];
    NSArray *nullArray=@[null];
    NSLog(@"NSNull %@",nullArray);
    return 0;
}
