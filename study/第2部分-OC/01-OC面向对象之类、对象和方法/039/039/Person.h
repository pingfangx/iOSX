//
//  Person.h
//  039
//
//  Created by pingfangx on 2017/8/31.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
}

//int fun(int a,int b)
- (void) intro;
- (void) intro:(NSString*) who;

- (void)setName:(NSString *)name;
- (void)setAge:(NSInteger)age;

- (NSString*)getName;
- (NSInteger)getAge;

- (void)setName:(NSString*)name setAge:(NSInteger)age;

- (void)setName:(NSString*)name setName:(NSInteger)age;

- (void)setNameAndAge:(NSString*)name :(NSInteger)age;

+ (Person *)newPerson;

@end
