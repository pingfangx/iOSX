//
//  AddressBook.m
//  106
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "AddressBook.h"

static AddressBook *instance=nil;
@implementation AddressBook

+ (AddressBook *)shareInstance{
    if(instance==nil){
        instance=[[AddressBook alloc] init];
    }
    return instance;
}

+ (id) allocWithZone:(struct _NSZone *)zone{
    if(instance==nil){
        instance=[super allocWithZone:zone];
    }
    return instance;
}

- (id)copyWithZone:(NSZone *)zone{
    return instance;
}
- (id)retain{
    return self;
}
- (oneway void)release{}

- (id)autorelease{
    return self;
}
- (NSUInteger)retainCount{
    return UINT_MAX;
}
@end
