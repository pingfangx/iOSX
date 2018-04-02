//
//  HomeViewController.m
//  173
//
//  Created by pingfangx on 2018/4/16.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "HomeViewController.h"
#import "FifthViewController.h"
#import "MainViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)loadView{
    self.title=@"首页";
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor redColor];
    self.view=view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hidesBottomBarWhenPushed=YES;
    // Do any additional setup after loading the view.
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    self.navigationItem.leftBarButtonItem=leftItem;
    self.tabBarItem.badgeValue=@"badge";
    
    UIButton *button=[[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    button.backgroundColor=[UIColor greenColor];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)push{
    FifthViewController *vc=[[FifthViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
    MainViewController *mainVc=(MainViewController *)self.tabBarController;
    [mainVc hideTabBar];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    MainViewController *mainVc=(MainViewController *)self.tabBarController;
    [mainVc showTabBar];
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
