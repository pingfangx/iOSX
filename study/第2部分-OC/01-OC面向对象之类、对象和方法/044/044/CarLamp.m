//
//  CarLamp.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "CarLamp.h"

@implementation CarLamp

-(id)initWithWattage:(float)wattage{
    self=[super init];
    if(self!=nil){
        _wattage=wattage;
    }
    return self;
}
-(void)light{
    NSLog(@"light,%.2f",_wattage);
}
-(void)dark{
    NSLog(@"dark,%.2f",_wattage);
}
@end
