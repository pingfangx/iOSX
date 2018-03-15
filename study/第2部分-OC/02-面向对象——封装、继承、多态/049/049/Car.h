//
//  Car.h
//  049
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
@private
    float _capcity;
@public
    NSString *_name;
}

- (float) getCapcity;

- (void) setCapcity:(float)capcity;

@end
