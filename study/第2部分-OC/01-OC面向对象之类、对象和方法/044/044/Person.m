//
//  Person.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Person.h"

@implementation Person



-(void)setName:(NSString*)name{
    _name=name;
}
-(NSString*)setName2:(NSString*)name{
    _name=name;
    return _name;
}
-(void)setAge:(NSInteger)age{
    _age=age;
}
-(void)setWeight:(float)weight{
    _weight=weight;
}

-(NSString*)getName{
    return _name;
}
-(NSInteger)getAge{
    return _age;
}
-(float)getWeight{
    return _weight;
}

-(void)intro{
    NSLog(@"name is %@,age is %ld,wight is %.2f",_name,(long)_age,_weight);
}
-(NSString*)getIntro{
    return @"this is form getIntro";
}

-(void)setSex:(NSInteger)psex{
    sex=psex;
    NSLog(@"sex is %ld",(long)sex);
}

@end
