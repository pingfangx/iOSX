//
//  CarEngine.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "CarEngine.h"

@implementation CarEngine

-(id)initWithModel:(NSString*)model withCapacity:(float)capacity{
    self=[super init];
    if (self!=nil){
        _model=model;
        _capacity=capacity;
    }
    return self;
}
-(void)turn{
    NSLog(@"start turn,%@,%.2f",_model,_capacity);
}
-(void)stopTurn{
    NSLog(@"stop turn,%@,%.2f",_model,_capacity);
}
@end
