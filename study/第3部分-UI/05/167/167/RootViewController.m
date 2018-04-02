//
//  RootViewController.m
//  167
//
//  Created by pingfangx on 2018/4/13.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController


- (void)loadView{
    
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor=[UIColor purpleColor];
    self.view=view;
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 35)];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor=[UIColor redColor];
    [self.view addSubview:button];
    
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(onClickLeftItem)];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    
    UIButton *midButton=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    midButton.backgroundColor=[UIColor greenColor];
    [midButton setTitle:@"中间" forState:UIControlStateNormal];
    [midButton addTarget:self action:@selector(onClickMidItem) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView=midButton;
    
    UIButton *rightButton=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [rightButton setTitle:@"右边" forState:UIControlStateNormal];
    rightButton.backgroundColor=[UIColor blueColor];
    [rightButton addTarget:self action:@selector(onClickRightItem) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem=rightItem;
    
    
    UIToolbar *toolBar=[[UIToolbar alloc] initWithFrame:CGRectMake(0, 400, 320, 44)];
    toolBar.barStyle=UIBarStyleDefault;
//    [self.view addSubview:toolBar];
    
    UIBarButtonItem *addItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    UIBarButtonItem *saveItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:nil];
    UIBarButtonItem *titleItem=[[UIBarButtonItem alloc] initWithTitle:@"title" style:UIBarButtonItemStyleBordered target:self action:nil];
    NSArray *items=@[addItem,saveItem,titleItem];
    [toolBar setItems:items animated:YES];
    
    [self.navigationController setToolbarHidden:NO animated:YES];
    [self setToolbarItems:items animated:YES];
}

- (void)onClickLeftItem{
    NSLog(@"onClickLeftItem");
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"othre", nil];
    [alert show];
}

- (void)onClickMidItem{
    NSLog(@"onClickMidItem");
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"title"
                                                                   message:@"message"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)onClickRightItem{
    NSLog(@"onClickRightItem");
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:@"title" delegate:nil cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@"other", nil];
    [actionSheet showInView:self.view];
}


- (void)push{
    NSLog(@"push");
    SecondViewController *vc=[[SecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate=self;
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

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"willShowViewController %@",viewController);
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"didShowViewController %@",viewController);
}

@end
