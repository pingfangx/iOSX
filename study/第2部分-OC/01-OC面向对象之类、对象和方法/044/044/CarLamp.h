//
//  CarLamp.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarLamp : NSObject{
    float _wattage;
}

-(id)initWithWattage:(float)wattage;
-(void)light;
-(void)dark;

@end
