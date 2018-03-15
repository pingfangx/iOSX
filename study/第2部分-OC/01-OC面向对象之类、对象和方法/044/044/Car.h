//
//  Car.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarEngine.h"
#import "CarLamp.h"
@interface Car : NSObject{
    NSString *_name;
    NSString *_licence;
    CarEngine *_engine;
    CarLamp *_lamp;
}
-(id)initWithName:(NSString*)name licence:(NSString*)licence engine:(CarEngine*)engine lamp:(CarLamp*)lamp;
-(void)run;
-(void)stop;

@end
