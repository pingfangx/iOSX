//
//  FourthViewController.m
//  173
//
//  Created by pingfangx on 2018/4/16.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)loadView{
    self.title=@"4";
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor purpleColor];
    self.view=view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title=@"title1";
    self.title=@"title2";
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
