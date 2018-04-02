//
//  SecondViewController.m
//  163
//
//  Created by pingfangx on 2018/4/13.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView{
    
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor greenColor];
    self.view=view;
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"push third" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 35)];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)push{
    ThirdViewController *thirdVC=[[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}



- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setToolbarHidden:NO animated:YES];
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
