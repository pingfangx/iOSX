//
//  Person.h
//  097
//
//  Created by pingfangx on 2018/3/23.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
@private
    NSString *_name;
}

+ (id) personWithName:(NSString *)name;
@end
