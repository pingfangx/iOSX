//
//  SecondViewController.m
//  173
//
//  Created by pingfangx on 2018/4/16.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)loadView{
    self.title=@"2";
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor greenColor];
    self.view=view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
