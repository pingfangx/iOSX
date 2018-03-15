//
//  Person.h
//  046-Dog
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject{
    NSString *_name;
    Dog *_dog;
}

-(id)initWithName:(NSString*)name dog:(Dog*)dog;
-(void)walkDog:(NSInteger)time;

@end
