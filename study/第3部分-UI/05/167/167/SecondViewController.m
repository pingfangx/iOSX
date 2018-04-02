//
//  SecondViewController.m
//  167
//
//  Created by pingfangx on 2018/4/14.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)loadView{
    self.title=@"second";
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor greenColor];
    self.view=view;
    
    
    
    UIButton *btnPop=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPop setTitle:@"btnPop" forState:UIControlStateNormal];
    [btnPop setFrame:CGRectMake(90, 200, 140, 35)];
    [btnPop addTarget:self action:@selector(btnPop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPop];
    
}

- (void)btnPop{
    [self.navigationController popViewControllerAnimated:YES];
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
