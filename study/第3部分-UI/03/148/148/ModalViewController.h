//
//  ModalViewController.h
//  148
//
//  Created by pingfangx on 2018/4/2.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalControllerDelegate <NSObject>

@optional
- (void)changeLabelText:(NSString *)text;

@end


@interface ModalViewController : UIViewController{
@private
    UITextField *_textField;
}
@property(nonatomic,assign) id<ModalControllerDelegate> delegate;
@end
