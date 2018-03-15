//
//  Rectangle.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(float)getArea{
    return _width*_height;
}
-(float)getCircumference{
    return (_width+_height)*2;
}
-(void)inputAndCal{
    NSLog(@"input width:");
    scanf("%f",&_width);
    
    NSLog(@"input height:");
    scanf("%f",&_height);
    
    NSLog(@"area is %.2f,circumference is %.2f",[self getArea],[self getCircumference]);
}
@end
