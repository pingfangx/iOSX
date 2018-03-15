//
//  Rectangle.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject{
    float _width;
    float _height;
}
-(void)inputAndCal;
-(float)getArea;
-(float)getCircumference;

@end
