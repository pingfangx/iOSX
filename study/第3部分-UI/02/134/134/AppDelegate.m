//
//  AppDelegate.m
//  134
//
//  Created by pingfangx on 2018/3/29.
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
    [self.window setRootViewController:[[UIViewController alloc] init]];
    NSLog(@"level %.2f",self.window.windowLevel);
    
    label=[[UILabel alloc] initWithFrame:CGRectMake(60, 100, 200, 100)];
    label.backgroundColor=[UIColor redColor];
    label.text=@"Hello~";
    [self.window addSubview:label];
    self.window.rootViewController=[[UIViewController alloc] init];
    
    NSLog(@"super view %@",[label superview]);
    NSLog(@"sub view %@",self.window.subviews);
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(90, 90, 140, 35);
    [btn setTitle:@"change" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor=[UIColor blueColor];
    btn.tag=22;
    [self.window addSubview:btn];
    
    
    
    return YES;
}

- (void)changeView{
    UIButton *btn=[self.window viewWithTag:22];
    btn.backgroundColor=[UIColor yellowColor];
    
    label.transform=CGAffineTransformRotate(label.transform, 0.2);
    label.transform=CGAffineTransformScale(label.transform, 0.8, 0.8);    NSLog(@"move");
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
