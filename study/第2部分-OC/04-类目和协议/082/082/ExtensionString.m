//
//  ExtensionString.m
//  082
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "ExtensionString.h"

@implementation NSString(ExtensionString)
- (NSString *)revert{
    NSMutableString *r=[NSMutableString string];
    for (long i=self.length-1; i>=0; i--) {
        unichar c=[self characterAtIndex:i];
        [r appendFormat:@"%c",c];
    }
    return r;
}
@end
