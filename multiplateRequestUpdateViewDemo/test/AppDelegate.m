//
//  AppDelegate.m
//  test
//
//  Created by zhou on 15/11/5.
//  Copyright © 2015年 jeff.zhou. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *viewController = (ViewController *)self.window.rootViewController;

    // 调用viewControllr.view从而访问viewDidLoad;
    NSLog(@"%@",viewController.view);
    
    // 无论哪个接口先调用，都不会影响最后的UI显示。updateView表示返回数据后的刷新
    // 甚至某个接口完全不发送，也不会影响显示相对位置错乱
    // 始终时从上到下依次排布
    // 最终从上往下 view1红，view2黄，view3蓝，view4黑，高度依次是10,20,30,40
    // 不需要任何标记变量
    [viewController updateView2:20];
    [viewController updateView4:40];
    [viewController updateView1:10];
    [viewController updateView3:30];



    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
