//
//  CarEngine.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarEngine : NSObject{
    NSString *_model;
    float _capacity;
}
-(id)initWithModel:(NSString*)model withCapacity:(float)capacity;
-(void)turn;
-(void)stopTurn;

@end
