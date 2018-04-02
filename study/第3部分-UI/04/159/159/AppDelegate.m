//
//  AppDelegate.m
//  159
//
//  Created by pingfangx on 2018/4/13.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController=[[UIViewController alloc]init];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame=CGRectMake(230, 100, 140, 40);
    [btn1 setTitle:@"alert" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(onBtn1Click) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn1];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame=CGRectMake(230, 100, 140, 140);
    [btn2 setTitle:@"action" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(onBtn2Click) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn2];
    
    return YES;
}

- (void) onBtn1Click{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"other", nil];
    [alertView show];
}
- (void) onBtn2Click{
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:@"title" delegate:nil cancelButtonTitle:@"cancle" destructiveButtonTitle:@"destructive" otherButtonTitles:@"other", nil];
    [actionSheet showInView:self.window];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
