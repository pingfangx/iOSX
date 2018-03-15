//
//  Person.m
//  105
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "Person.h"

#define NAME @"name"
#define AGE @"age"

@implementation Person

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeInt:_age forKey:AGE];
}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    if(self!=nil){
        self.name=[aDecoder decodeObjectForKey:NAME];
        self.age=[aDecoder decodeIntForKey:AGE];
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@,%d",_name,_age];
}
@end
