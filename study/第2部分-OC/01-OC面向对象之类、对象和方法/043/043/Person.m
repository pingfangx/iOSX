//
//  Person.m
//  043
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id) initWithName:(NSString*)name{
    return [self initWithName:name withAge:0];
}

-(id) initWithName:(NSString*)name withAge:(NSInteger)age{
    self=[super init];
    if(self!=nil){
        _name=name;
        _age=age;
    }
    return self;
    
}

-(void) showInfo{
    NSLog(@"name is %@,age is %ld",_name,(long)_age);
}


@end
