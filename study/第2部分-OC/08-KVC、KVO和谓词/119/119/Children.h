//
//  Children.h
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Children;

@protocol ChildrenDelegate <NSObject>

- (void)wash:(Children *)children;
- (void)play:(Children *)children;

@end

@interface Children : NSObject{
    id<ChildrenDelegate> _delegate;
}
@property(nonatomic,assign)NSInteger timeValue;
- (void)timerAction:(NSTimer *)timer;
- (void)setDelegate:(id<ChildrenDelegate>)delegate;

@end
