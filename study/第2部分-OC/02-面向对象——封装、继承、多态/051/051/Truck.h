//
//  Truck.h
//  051
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Car.h"

@interface Truck : Car{
    float _maxWeight;
    
}
- (id)initWithMaxWeight:(float)maxWeight;
- (void)unload;
@end
