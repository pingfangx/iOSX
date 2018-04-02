//
//  MainViewController.m
//  173
//
//  Created by pingfangx on 2018/4/16.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController *vc1=[[HomeViewController alloc] init];
    UITabBarItem *tabBarItem1=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    tabBarItem1.title=@"下";
    vc1.tabBarItem=tabBarItem1;
    
    UINavigationController *homeVc=[[UINavigationController alloc] initWithRootViewController:vc1];
    
    
    UIViewController *vc2=[[SecondViewController alloc] init];
    UITabBarItem *tabBarItem2=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:2];
    vc2.tabBarItem=tabBarItem2;
    
    UIViewController *vc3=[[ThirdViewController alloc] init];
    UITabBarItem *tabBarItem3=[[UITabBarItem alloc] initWithTitle:@"3" image:nil tag:3];
    vc3.tabBarItem=tabBarItem3;
    
    UIViewController *vc4=[[FourthViewController alloc] init];
    
    UIViewController *vc5=[[FifthViewController alloc] init];
    
    
    NSArray *viewControllers=@[homeVc,[[UINavigationController alloc]initWithRootViewController:vc2],vc3,vc4,vc5];
    UITabBarController *tabBarController=[[UITabBarController alloc] init];
    tabBarController.viewControllers=viewControllers;
//    tabBarController.delegate=self;
    tabBarController.tabBar.tintColor=[UIColor blueColor];
    
    [self setViewControllers:viewControllers animated:YES];
    
    self.tabBar.hidden=YES;
    
    
    UIView *label=[[UIView alloc] initWithFrame:CGRectMake(0, 420, 480, 50)];
    label.tag=22;
    label.backgroundColor=[UIColor orangeColor];
    [self.view addSubview:label];

    
    float x=0;
    for(int index=0;index<5;index++){
        UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame=CGRectMake(14+x, 49/2-20, 42, 40);
        button.backgroundColor=[UIColor blueColor];
        [label addSubview:button];
        x+=62;
        button.tag=index;
        [button addTarget:self action:@selector(changeIndex:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

- (void)hideTabBar{
    UIView *view=[self.view viewWithTag:22];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    view.frame=CGRectMake(-480, 420, 480, 50);
    [UIView commitAnimations];
//    view.hidden=YES;
}
- (void)showTabBar{
    UIView *view=[self.view viewWithTag:22];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    view.frame=CGRectMake(0, 420, 480, 50);
    [UIView commitAnimations];
//    view.hidden=NO;
}
- (void)changeIndex:(UIButton *)button{
    self.selectedIndex=button.tag;
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
