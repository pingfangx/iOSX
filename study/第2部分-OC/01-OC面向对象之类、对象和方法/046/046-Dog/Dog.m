//
//  Dog.m
//  046-Dog
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(id)initWithName:(NSString*)name color:(NSString*)color{
    self=[super init];
    if(self!=nil){
        _name=name;
        _color=color;
    }
    return self;
}
-(void)run{
    NSLog(@"%@ of %@,run",_name,_color);
}
-(void)playBall{
    NSLog(@"%@ of %@,play ball",_name,_color);
}
-(void)bark{
    NSLog(@"%@ of %@,bark",_name,_color);
}
@end
