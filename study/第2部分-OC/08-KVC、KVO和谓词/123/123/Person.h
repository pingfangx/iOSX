//
//  Person.h
//  123
//
//  Created by pingfangx on 2018/3/27.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSUInteger age;

+ (id) personWithName:(NSString *)name andAge:(NSUInteger)age;
@end
