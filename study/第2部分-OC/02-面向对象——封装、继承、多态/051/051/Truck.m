//
//  Truck.m
//  051
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Truck.h"

@implementation Truck

- (id)initWithMaxWeight:(float)maxWeight{
    self=[super init];
    if(self){
        _maxWeight=maxWeight;
    }
    return self;
}
- (void)unload{
    NSLog(@"%@ 的卡车卸货了，载货量 %.2f，颜色 %@",_brand,_maxWeight,_color);
}
@end
