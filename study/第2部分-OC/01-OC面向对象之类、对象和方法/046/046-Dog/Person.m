//
//  Person.m
//  046-Dog
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString*)name dog:(Dog*)dog{
    self=[super init];
    if(self!=nil){
        _name=name;
        _dog=dog;
    }
    return self;
}
-(void)walkDog:(NSInteger)time{
    if(time==9){
        [_dog run];
    }else if(time==10){
        [_dog playBall];
    }else if (time==11){
        [_dog bark];
    }else{
        NSLog(@"it is time to rest.");
    }
}
@end
