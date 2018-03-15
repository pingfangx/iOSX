//
//  Person.h
//  105
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;
@end
