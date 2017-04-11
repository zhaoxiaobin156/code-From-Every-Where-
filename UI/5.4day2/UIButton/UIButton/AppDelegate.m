//
//  AppDelegate.m
//  UIButton
//
//  Created by 刘桂林 on 16/5/4.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [UIViewController new];
    
    //初始化一个button按钮
    /*
     UIButtonTypeCustom = 0,                         // no button type
     UIButtonTypeSystem NS_ENUM_AVAILABLE_IOS(7_0),  // standard system button
     
     UIButtonTypeDetailDisclosure,
     UIButtonTypeInfoLight,
     UIButtonTypeInfoDark,
     UIButtonTypeContactAdd,
     
     UIButtonTypeRoundedRect = UIButtonTypeSystem,
     
     */
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; //系统样式按钮
    button.frame = CGRectMake(100, 200, 200, 50);
    button.backgroundColor = [UIColor redColor];
    [self.window addSubview:button];
    
    //设置按钮边框颜色和边框大小和倒角
//    button.layer.borderColor = [UIColor blackColor].CGColor;
//    button.layer.borderWidth = 5.0f;
    button.layer.cornerRadius = 5.0f;
    
    //设置按钮标题
    [button setTitle:@"普通状态" forState:UIControlStateNormal];
    
    [button setTitle:@"高亮状态" forState:UIControlStateHighlighted];
    button.highlighted = YES;//默认为NO
   
#if 0
    //禁用状态的时候所有其他效果都会失效 无法触发
    [button setTitle:@"禁用状态" forState:UIControlStateDisabled];
    button.enabled = NO;
    
    [button setTitle:@"选择状态" forState:UIControlStateSelected];
    //设置为选中状态
    button.selected = YES;
#endif
    
    //设置按钮文字颜色
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    //添加事件
    //参数1：触发方法的对象
    //参数2：触发的方法
    //参数3：触发方法的方式
    //:需要传参数的
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
//    [button removeTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    //设置tag
    button.tag = 100;
    
    return YES;
}

- (void)buttonClick:(UIButton *)button
{
//    if (button.tag == 100) {
//        NSLog(@"title == %@",button.currentTitle);
//    }
    
    //父视图通过tag值获取子视图
    UIButton *btn = (UIButton *)[self.window viewWithTag:100];
    //btn.currentTitle 这种获取适用于系统样式按钮
    NSLog(@"title == %@",btn.currentTitle);
    NSLog(@"text == %@",btn.titleLabel.text);
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
