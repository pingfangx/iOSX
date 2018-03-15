//
//  Car.h
//  051
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    NSString *_brand;
    NSString *_color;
}

- (void)setBrand:(NSString *)brand;
- (void)setColor:(NSString *)color;

- (void) brake;

- (void) quicken;


@end
