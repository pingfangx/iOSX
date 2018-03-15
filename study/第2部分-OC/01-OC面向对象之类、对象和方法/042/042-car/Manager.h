//
//  Manager.h
//  042-car
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject{
    NSString* _username;
    NSString* _password;
}
-(void)setUserName:(NSString*)username;
-(void)setPassword:(NSString*)password;
-(NSString*)getUserName;
-(NSString*)getPassword;
-(BOOL)changePassword;
-(void)showInfo;
@end
