//
//  CustomTabbarController.m
//  tabbar自定义图片
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomTabbarController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface CustomTabbarController ()

@end

@implementation CustomTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController1 *v1 = [[ViewController1 alloc] init];
    
    v1.tabBarItem.title = @"微信";
    
    //UIImageRenderingModeAlwaysOriginal图片原来颜色 关闭tabbar的渲染效果
    v1.tabBarItem.image = [[UIImage imageNamed:@"tabbar_mainframe@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    v1.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_mainframeHL@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
   
    ViewController2 *v2 = [[ViewController2 alloc] init];
    
    v2.tabBarItem.title = @"联系人";
    
    v2.tabBarItem.image = [[UIImage imageNamed:@"tabbar_contacts@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    v2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_contactsHL@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ViewController3 *v3 = [[ViewController3 alloc] init];
    
    v3.tabBarItem.title = @"发现";
    
    v3.tabBarItem.image = [[UIImage imageNamed:@"tabbar_discover@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    v3.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_discoverHL@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ViewController4 *v4 = [[ViewController4 alloc] init];
    
    v4.tabBarItem.title = @"我";
    
    v4.tabBarItem.image = [[UIImage imageNamed:@"tabbar_me@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    v4.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_meHL@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //修改字体颜色
    self.tabBar.tintColor = [UIColor colorWithRed:14 / 255.0 green:180 / 255.0 blue:0 alpha:1];
    
    self.viewControllers = @[v1,v2,v3,v4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
