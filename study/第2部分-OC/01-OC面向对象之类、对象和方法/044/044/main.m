//
//  main.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"
#import "Rectangle.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        Book *book=[[Book alloc]initWithTitle:@"xx" withPage:222];
//        [book showDetail];
        
//        Rectangle *rectangle=[[Rectangle alloc]init];
//        [rectangle inputAndCal];
        
//        Car *car=[[Car alloc]initWithName:@"car name" licence:@"X1234" engine:[[CarEngine alloc]initWithModel:@"EngineModel" withCapacity:22] lamp:[[CarLamp alloc]initWithWattage:200]];
//        [car run];
//        [car stop];
        
        
        Person *person=[[Person alloc]init];
        person.name=@"x";
        person.name2=@"x2";
        NSString* name3=person.name2=@"x3";
        NSLog(@"set %@",name3);
        person.age=22;
        [person intro];
        NSLog(@"%@",person.getIntro);
        person.sex=1;
    }
    return 0;
}
