//
//  AppDelegate.m
//  UIButton设置图片
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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor cyanColor];
    button.frame = CGRectMake(100, 200, 100, 50);
    [self.window addSubview:button];
    
    //方法1：通过图片名字获取image
    //如果图片格式是png格式可以不加后缀（png苹果系统本身支持的格式） 如果是其他格式都是需要添加后缀的
    UIImage *image = [UIImage imageNamed:@"001@2x"];
    UIImage *backImage = [UIImage imageNamed:@"map"];
    
    //设置了背景图片的时候 圆角效果出不来
    button.layer.cornerRadius = 5.0f;
    //要出圆角效果需要加下面这句代码
    button.layer.masksToBounds = YES;

#if 0
    //方法2：通过图片路径获取image
    UIImage *pathImage = [UIImage imageWithContentsOfFile:@"/Users/liuguilin/Desktop/Image/1.png"];
    
    //方法3：通过工程文件获取image
    //加载项目中的文件
    NSString *path = [[NSBundle mainBundle] pathForResource:@"4" ofType:@"jpg"];
    UIImage *pathImage2 = [UIImage imageWithContentsOfFile:path];
#endif
    
    //设置按钮图片
    [button setImage:image forState:UIControlStateNormal];
    
    //设置背景图片
    [button setBackgroundImage:backImage forState:UIControlStateNormal];
    
    
    
    //设置图片偏移
//    button.imageEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0);
    
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
