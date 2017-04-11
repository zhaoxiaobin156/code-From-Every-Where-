//
//  AppDelegate.m
//  定时器NSTimer
//
//  Created by 刘桂林 on 16/5/4.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
{
    NSTimer *_timer;
    NSInteger _count;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [UIViewController new];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    
    [button setTitle:@"启动定时器" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(timeGo:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.window addSubview:button];
    
    
    
    return YES;
}

- (void)timeGo:(UIButton *)button
{
    //启动定时器
    //参数1：时间间隔
    //参数2：self
    //参数3：事件
    //参数4：形参
    //参数5：是否重复
    button.enabled = NO;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timer:) userInfo:button repeats:YES];
}

- (void)timer:(NSTimer *)timer
{
    UIButton *button = (UIButton *)timer.userInfo;
    [button setTitle:[NSString stringWithFormat:@"%ld",_count] forState:UIControlStateNormal];
   
    NSLog(@"count == %ld",_count);
    if (_count == 10) {
        //判断定时器是否有效
        if (timer.isValid) {
            //销毁定时器
            [timer invalidate];
        }
    }
    
     _count ++;
    
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
