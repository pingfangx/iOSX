//
//  Person.h
//  102
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//不正确，应该用 copy
@property(nonatomic,retain)NSString *name;
@end
