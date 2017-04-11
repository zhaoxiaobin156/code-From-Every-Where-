//
//  AppDelegate.m
//  FirstApp
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


//iOS程序的生命周期
//唯一入口
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    NSLog(@"didFinishLaunchingWithOptions,程序加载完成");
    
    /*
     struct CGRect {
     CGPoint origin; //视图的x，y坐标
     CGSize size;    //视图的宽高
     };
     
     struct CGPoint {
     CGFloat x; //从左往右逐渐变大，x是视图的起始横坐标
     CGFloat y; //从上到下逐渐变大，y是视图的起始纵坐标
     };
     
     struct CGSize {
     CGFloat width; width是视图的宽度
     CGFloat height; height视图的高度
     };
     */
    //[UIScreen mainScreen] 获取屏幕对象
    //[[UIScreen mainScreen] bounds] 获取屏幕的大小
    CGRect mainRect = [[UIScreen mainScreen] bounds];
    
    //UIWindow继承于UIView
    //所有看的见的视图都是直接或者间接继承于UIView
    self.window = [[UIWindow alloc] initWithFrame:mainRect];
    
    //设置window的背景颜色
    self.window.backgroundColor = [UIColor whiteColor];
    
    //让window可见
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [UIViewController new];
    
    //打印当前window的frame
    NSLog(@"frame == %@",NSStringFromCGRect(self.window.frame));
    
#if 0
    //创建了一个父视图
    //CGRectMake得到一个rect的变量
    UIView *fatherView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200 )];
    fatherView.backgroundColor = [UIColor redColor];
    //addSubview 添加子视图
    [self.window addSubview:fatherView];
    
    //创建一个子视图
    //frame: 该view在父view坐标系统中的位置和大小。相对父视图中的位置
    UIView *sonView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    sonView.backgroundColor = [UIColor greenColor];
    [fatherView addSubview:sonView];
    
    //创建一个子视图
    //bounds：该view在自身坐标系中的位置和大小。起始位置都是（0，0）
    UIView *sonView2 = [[UIView alloc] initWithFrame:sonView.bounds];
    sonView2.backgroundColor = [UIColor blueColor];
    [fatherView addSubview:sonView2];
#endif
    
    //中心视图
    //center：该view的中心点在父view坐标系统中的位置。
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 200, 200)];
    centerView.center = CGPointMake(WIDTH / 2, HEIGHT / 2);
    centerView.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:centerView];
    
    //创建一个中心视图的子视图
    UIView *conterSonView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    conterSonView.backgroundColor = [UIColor orangeColor];
    
    [centerView addSubview:conterSonView];
    
    //子视图中所有超出父视图的部分都会被截取掉
    centerView.clipsToBounds = YES;
    
    //从父视图上移除
    [centerView removeFromSuperview];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
//    NSLog(@"applicationWillResignActive,即将进入后台");
    //command+shift+h = 苹果home键
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
//    NSLog(@"applicationDidEnterBackground,已经进入后台");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
//    NSLog(@"applicationWillEnterForeground,即将进入前台");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//    NSLog(@"applicationDidBecomeActive,已经进入前台");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
//    NSLog(@"app删掉的时候");
}

//didFinishLaunchingWithOptions程序加载完成 -》applicationDidBecomeActive,已经进入前台 -》home键 -》applicationWillResignActive,即将进入后台 - 》 applicationDidEnterBackground,已经进入后台 -》 点击app图标 -》 applicationWillEnterForeground,即将进入前台 -》 applicationDidBecomeActive,已经进入前台

@end
