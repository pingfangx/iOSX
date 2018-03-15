//
//  Person.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
    float _weight;
    NSInteger sex;
}

-(void)setName:(NSString*)name;
-(NSString*)setName2:(NSString*)name;
-(void)setAge:(NSInteger)age;
-(void)setSex:(NSInteger)psex;
-(void)setWeight:(float)weight;

-(NSString*)getName;
-(NSInteger)getAge;
-(float)getWeight;

-(void)intro;

-(NSString*)getIntro;
@end
