//
//  Book.h
//  044
//
//  Created by pingfangx on 2017/9/4.
//  Copyright © 2017年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject{
    NSString *_title;
    NSInteger _page;
}

-(id)initWithTitle:(NSString*)title withPage:(NSInteger)page;
-(void)showDetail;
@end
