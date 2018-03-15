//
//  Dog.h
//  046-Dog
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject{
    NSString *_name;
    NSString *_color;
}
-(id)initWithName:(NSString*)name color:(NSString*)color;
-(void)run;
-(void)playBall;
-(void)bark;

@end
