//
//  ThirdViewController.m
//  163
//
//  Created by pingfangx on 2018/4/13.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

static int vcIndex=3;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)loadView{
    self.title=[NSString stringWithFormat:@"第 3 个-%d",++vcIndex];
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor greenColor];
    self.view=view;
    
    UIButton *btnPush=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPush setTitle:@"btnPush" forState:UIControlStateNormal];
    [btnPush setFrame:CGRectMake(90, 100, 140, 35)];
    [btnPush addTarget:self action:@selector(btnPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPush];
    
    
    UIButton *btnPop=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPop setTitle:@"btnPop" forState:UIControlStateNormal];
    [btnPop setFrame:CGRectMake(90, 200, 140, 35)];
    [btnPop addTarget:self action:@selector(btnPop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPop];
    
    
    
    UIButton *btnRoot=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnRoot setTitle:@"btnRoot" forState:UIControlStateNormal];
    [btnRoot setFrame:CGRectMake(90, 300, 140, 35)];
    [btnRoot addTarget:self action:@selector(btnRoot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRoot];
    
    
    UIButton *btnIndex=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnIndex setTitle:@"btnIndex" forState:UIControlStateNormal];
    [btnIndex setFrame:CGRectMake(90, 400, 140, 35)];
    [btnIndex addTarget:self action:@selector(btnIndex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnIndex];
}


- (void)btnPush{
    ThirdViewController *thirdVC=[[ThirdViewController alloc]init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

- (void)btnPop{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)btnRoot{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)btnIndex{
    UIViewController *VC=[[self.navigationController viewControllers] objectAtIndex:1];
    [self.navigationController popToViewController:VC animated:YES];
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
