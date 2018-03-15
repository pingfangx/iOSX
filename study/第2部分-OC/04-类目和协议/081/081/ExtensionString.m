//
//  ExtensionString.m
//  081
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "ExtensionString.h"

@implementation NSString(ExtensionString)
- (BOOL)validateEmail{
    NSRange range=[self rangeOfString:@"@"];
    if(range.location==NSNotFound){
        return NO;
    }
    return YES;
}

@end
