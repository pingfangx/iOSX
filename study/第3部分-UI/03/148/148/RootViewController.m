//
//  RootViewController.m
//  148
//
//  Created by pingfangx on 2018/4/2.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.tag=101;
    button.frame=CGRectMake(90, 180, 140, 40);
    [button setTitle:@"present" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(presentModalVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(90, 100, 140, 40)];
    label.text=@"Hello World";
    label.tag=102;
    label.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:label];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeLabelTextByNotification:) name:@"changeLableTextNotification" object:nil];
    
}


- (void)presentModalVC{
    NSLog(@"presentModalVC");
    ModalViewController *modalVC=[[ModalViewController alloc]init];
//    modalVC.modalTransitionStyle=UIModalTransitionStylePartialCurl;
    modalVC.delegate=self;
    [self presentViewController:modalVC animated:YES completion:^{
        NSLog(@"modal vc completion callback");
    }];
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


#pragma mark -
- (void)changeLabelText:(NSString *)text{
    NSLog(@"from delegate %@",text);
    UILabel *lable=[self.view viewWithTag:102];
    lable.text=text;
}

- (void)changeLabelTextByNotification:(NSNotification *)notification{
    id text=notification.object;
    NSLog(@"from notification %@",text);
    UILabel *lable=[self.view viewWithTag:102];
    lable.text=text;
}

- (void)dealloc{
//    [super dealloc];
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
