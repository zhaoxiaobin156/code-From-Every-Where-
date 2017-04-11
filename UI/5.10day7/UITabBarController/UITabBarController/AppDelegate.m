//
//  AppDelegate.m
//  UITabBarController
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h" 
#import "ViewController6.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController1 *v1 = [[ViewController1 alloc] init];
    ViewController2 *v2 = [[ViewController2 alloc] init];
    ViewController3 *v3 = [[ViewController3 alloc] init];
    ViewController4 *v4 = [[ViewController4 alloc] init];
    ViewController5 *v5 = [[ViewController5 alloc] init];
    ViewController6 *v6 = [[ViewController6 alloc] init];
    
    //UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:v1];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    
    //分栏控制器装载所有视图控制器和导航控制器(水平切换，不需要我们管理切换)
    //tabBarController中最多只允许显示5个视图控制器
    //超出的系统会自动添加一个more
    
    tabbar.viewControllers = @[v1,v2,v3,v4,v5,v6];
    
    //设置代理对象
    tabbar.delegate = self;
    
    //隐藏tabbar
//    tabbar.tabBar.hidden = YES;
    
    //设置选中tabbar的下标(默认选中数组的第0个元素)
//    tabbar.selectedIndex = 1;
    
    NSInteger index = [[NSUserDefaults standardUserDefaults] integerForKey:@"tabbarIndex"];
    
    if (index) {
        tabbar.selectedIndex = index;
    }
    
    //无论存储的是可变还是不可变，取出的值都是不可变
    NSArray *arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"mutArr"];
    
    if (arr.count) {
        
        NSMutableArray *mutArr = [NSMutableArray array];
        
        for (NSString *str in arr) {
            
            //以类名创建视图控制器对象
            id vc = [[NSClassFromString(str) alloc] init];
            [mutArr addObject:vc];
        }
        tabbar.viewControllers = mutArr;
    }
    
    self.window.rootViewController = tabbar;
    
    return YES;
}

//被选中的时候
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //viewController当前点击的视图控制器
    NSLog(@"title == %@",viewController.title);
    
    //tabBarController.selectedIndex当前点击tabbarController的下标
    NSLog(@"index == %ld",tabBarController.selectedIndex);
    
    [[NSUserDefaults standardUserDefaults] setInteger:tabBarController.selectedIndex forKey:@"tabbarIndex"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//不能被选中
-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
//    if ([viewController.title isEqualToString:@"蓝色"]) {
//        return NO;
//    }
    
    return YES;
}

//下面这三个方法主要用于监测对UIMoreNavigationController中对viewController的edit操作

//即将改变视图控制器的位置(点击了Edit按钮后tabbar.selectedIndex又会默认为0)
-(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
{
    NSLog(@"即将改变视图控制器的位置");
}

//即将结束编辑状态
-(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将结束编辑状态");
    
    //change代表是否改变视图控制器的位置
    if (changed) {
        
        for(UIViewController *vc in viewControllers)
        {
            NSLog(@"vc.title == %@",vc.title);

        }
    }
}

//已经结束编辑状态
-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"已经结束编辑状态");
    
    NSMutableArray *mutArr = [NSMutableArray array];
    
    for(id vc in viewControllers)
    {
        [mutArr addObject:NSStringFromClass([vc class])];
    }
    
    NSLog(@"mutArr = %@",mutArr);
    
    [[NSUserDefaults standardUserDefaults] setObject:mutArr forKey:@"mutArr"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
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
