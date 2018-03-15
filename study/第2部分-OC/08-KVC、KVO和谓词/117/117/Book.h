//
//  Book.h
//  117
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Book : NSObject{
@private
    Author *_author;
}
@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign)float price;

@end
