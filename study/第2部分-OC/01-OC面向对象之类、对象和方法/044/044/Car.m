//
//  Car.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id)initWithName:(NSString*)name licence:(NSString*)licence engine:(CarEngine*)engine lamp:(CarLamp*)lamp{
    self=[super init];
    if(self!=nil){
        _name=name;
        _licence=licence;
        _engine=engine;
        _lamp=lamp;
    }
    return self;
}
-(void)run{
    [_engine turn];
    [_lamp light];
    NSLog(@"car run");
}
-(void)stop{{
    [_engine stopTurn];
    [_lamp dark];
    NSLog(@"car stop");
}
}
@end
