//
//  Dog.h
//  089
//
//  Created by pingfangx on 2018/3/21.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject{
    NSString *_name;
}
- (void)setName:(NSString *)name;
- (NSString *)getName;

@end
