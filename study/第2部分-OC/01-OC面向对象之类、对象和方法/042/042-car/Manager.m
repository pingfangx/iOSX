//
//  Manager.m
//  042-car
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(void)setUserName:(NSString*)username{
    _username=username;
}
-(void)setPassword:(NSString*)password{
    _password=password;
}
-(NSString*)getUserName{
    return _username;
}
-(NSString*)getPassword{
    return _password;
}
-(BOOL)changePassword{
    NSLog(@"input old password:");
    char *cOldPassword=malloc(sizeof(char)*100);
    scanf("%s",cOldPassword);
    NSString* oldPassword=[NSString stringWithUTF8String:cOldPassword];
    if([oldPassword isEqualToString:_password]){
        NSLog(@"input new password:");
        char *cNewPassowrd=malloc(sizeof(char)*100);
        scanf("%s",cNewPassowrd);
        NSString *newPassword=[NSString stringWithUTF8String:cNewPassowrd];
        _password=newPassword;
        NSLog(@"success");
        return YES;
    }
    NSLog(@"fail");
    return NO;
}

-(void)showInfo{
    NSLog(@"name is %@,password is %@",_username,_password);
}


@end
