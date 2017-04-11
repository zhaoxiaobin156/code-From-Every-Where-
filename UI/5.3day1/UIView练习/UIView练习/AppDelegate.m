//
//  AppDelegate.m
//  UIView练习
//
//  Created by 刘桂林 on 16/5/3.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "AppDelegate.h"
#define WIDTH self.window.frame.size.width
#define HEIGHT self.window.frame.size.height
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [UIViewController new];
    
    //创建五个view
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor = [self arc4randomColor];
    [self.window addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, HEIGHT - 100, 100, 100)];
    view2.backgroundColor = [self arc4randomColor];
    [self.window addSubview:view2];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(WIDTH - 100, 0, 100, 100)];
    view3.backgroundColor = [self arc4randomColor];
    [self.window addSubview:view3];
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(WIDTH - 100, HEIGHT - 100, 100, 100)];
    view4.backgroundColor = [self arc4randomColor];
    [self.window addSubview:view4];
    
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view5.center = CGPointMake(WIDTH / 2, HEIGHT / 2);
    view5.backgroundColor = [self arc4randomColor];
    [self.window addSubview:view5];
    
    return YES;
}
                             
- (UIColor *)arc4randomColor
{
    //alpha:透明度 1 不透明  0完全透明
    //R G B: 0 0 0 黑色 1 1 1 白色
    return [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
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
