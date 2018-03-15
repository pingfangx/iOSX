//
//  Book.m
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)initWithTitle:(NSString*)title withPage:(NSInteger)page{
    self=[super init];
    if (self!=nil){
        _title=title;
        _page=page;
    }
    return self;
}

-(void)showDetail{
    NSLog(@"title is %@,page is %ld",_title,(long)_page);
}
@end
