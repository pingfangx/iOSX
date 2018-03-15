//
//  Nurse.h
//  085
//
//  Created by pingfangx on 2018/3/20.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"

@interface Nurse : NSObject <ChildrenDelegate>{
    Children *_children;
}
- (id) initWithChildren:(Children *)children;
@end
