//
//  ModalViewController.m
//  148
//
//  Created by pingfangx on 2018/4/2.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textField=[[UITextField alloc]initWithFrame:CGRectMake(90, 100, 180, 40)];
    _textField.borderStyle=UITextBorderStyleRoundedRect;
    [self.view addSubview:_textField];
    
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(90, 200, 140, 40)];
    [button setTitle:@"set by delegate" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *button2=[[UIButton alloc]initWithFrame:CGRectMake(90, 300, 140, 40)];
    [button2 setTitle:@"set by notification" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(dismissWithNotification) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    self.view.backgroundColor=[UIColor blueColor];
}

- (void)dismiss{
    if([self.delegate respondsToSelector:@selector(changeLabelText:)]){
        [self.delegate changeLabelText:_textField.text];
    }
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void) dismissWithNotification{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeLableTextNotification" object:_textField.text];
    [self dismissViewControllerAnimated:YES completion:^{}];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
