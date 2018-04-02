//
//  MainViewController.m
//  141
//
//  Created by pingfangx on 2018/3/29.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void) loadView{
    NSLog(@"loadView");
    [super loadView];
}

- (void)viewDidLoad {
    NSLog(@"viewDidDload");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear");
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear");
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    if(self.view.window==nil){
        //当前的视图控制器中的视图不在当前窗口中
        self.view=nil;
    }
    
    NSLog(@"self.view.window:%@",self.view.window);
    
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
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
