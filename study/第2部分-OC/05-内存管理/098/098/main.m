//
//  main.m
//  098
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    Dog *dog=[[Dog alloc] init];
    Person *person=[[Person alloc]init];
    
    [dog setPerson:person];
    [person setDog:dog];
    
    [dog release];
    [person release];
    NSLog(@"finish");
    return 0;
}

