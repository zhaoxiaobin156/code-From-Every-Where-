//
//  AppDelegate.m
//  UILabel
//
//  Created by 刘桂林 on 16/5/3.
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
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    
    //设置内容
    label.text = @"我是一个label按时到健康哈迪斯就看到卡萨丁asd,weqe";
    //设置背景颜色
    label.backgroundColor = [UIColor orangeColor];
    //设置文字对齐方式
    label.textAlignment = NSTextAlignmentCenter;
    //设置文字的颜色
    label.textColor = [UIColor purpleColor];
    //设置文字阴影颜色
//    label.shadowColor = [UIColor blackColor];
    //设置文字阴影偏移
//    label.shadowOffset = CGSizeMake(5, 10);
    //设置字体大小
    label.font = [UIFont systemFontOfSize:18];
    //设置label多行显示
    label.numberOfLines = 0;
    //设置文字自适应
    label.adjustsFontSizeToFitWidth = YES;
    
    //设置label末尾显示
    /*
     NSLineBreakByWordWrapping = 0,  以单词进行换行,如果显示不下,舍去尾端
     NSLineBreakByCharWrapping,      以字符进行换行,如果显示不下,舍去尾端
     NSLineBreakByClipping,          以单词进行换行,如果该单词显示不下,则舍去后半部分.舍去尾端
     NSLineBreakByTruncatingHead,    以单词进行换行,如果该单词显示不下,省略最后一行的行首
     NSLineBreakByTruncatingTail,    以单词进行换行,如果该单词显示不下,省略最后一行的行尾
     NSLineBreakByTruncatingMiddle   以单词进行换行,如果该单词显示不下,省略最后一行的中间
     */
//    label.lineBreakMode = NSLineBreakByCharWrapping;
    
#if 0
    //拿到字体族的数组,数组中是字体族的名称
    NSArray *familyArray = [UIFont familyNames];
    for(NSString *familyName in familyArray)
    {
        NSArray *names = [UIFont fontNamesForFamilyName:familyName];
        for (NSString *fontName in names) {
            NSLog(@"fontName:%@",fontName);
        }
    }
    
    UIFont *font = [UIFont fontWithName:@"BanglaSangamMN" size:30];
    
    label.font = font;
#endif
    
    
    
    [self.window addSubview:label];
    
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
