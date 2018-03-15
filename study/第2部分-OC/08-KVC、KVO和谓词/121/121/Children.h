//
//  Children.h
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Children;

@interface Children : NSObject{
}
@property(nonatomic,assign)NSInteger timeValue;
- (void)timerAction:(NSTimer *)timer;

@end
