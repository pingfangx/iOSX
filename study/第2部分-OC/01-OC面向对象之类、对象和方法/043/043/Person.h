//
//  Person.h
//  043
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
}
-(id) initWithName:(NSString*)name;
-(id) initWithName:(NSString*)name withAge:(NSInteger)age;
-(void) showInfo;
@end
