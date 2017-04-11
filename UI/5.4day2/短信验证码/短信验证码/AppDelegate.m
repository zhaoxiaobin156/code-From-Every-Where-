//
//  AppDelegate.m
//  短信验证码
//
//  Created by 刘桂林 on 16/5/4.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
{
    UIButton *_button;
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
    
    _count = 10;
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(100, 200, 100, 50);
    [_button setTitle:@"获取验证码" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _button.backgroundColor = [UIColor redColor];
    [_button addTarget:self action:@selector(timerGo) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:_button];
    
    return YES;
}

- (void)timerGo
{
    //不能重复被点击
    _button.enabled = NO;
    
    _count = 10;
    //启动定时器
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timer:) userInfo:nil repeats:YES];
}

- (void)timer:(NSTimer *)timer
{
    [_button setTitle:[NSString stringWithFormat:@"%ld",_count] forState:UIControlStateNormal];
    
    if (_count == 0) {
        if ([timer isValid]) {
            
            //定时器停止
            [timer invalidate];
            
            //按钮可以被点击
            _button.enabled = YES;
            
            [_button setTitle:@"重获验证码" forState:UIControlStateNormal];
            
        }
    }
    
    _count --;
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
