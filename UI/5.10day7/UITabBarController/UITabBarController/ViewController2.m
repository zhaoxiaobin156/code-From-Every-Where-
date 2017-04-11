//
//  ViewController2.m
//  UITabBarController
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (instancetype)init
{
    self = [super init];
    if (self) {
        //设置tabbar上的文字和图片(系统)
        //    UITabBarSystemItemMore
        //    UITabBarSystemItemFavorites
        //    UITabBarSystemItemFeatured
        //    UITabBarSystemItemTopRated
        //    UITabBarSystemItemRecents
        //    UITabBarSystemItemContacts
        //    UITabBarSystemItemHistory
        //    UITabBarSystemItemBookmarks
        //    UITabBarSystemItemSearch
        //    UITabBarSystemItemDownloads
        //    UITabBarSystemItemMostRecent
        //    UITabBarSystemItemMostViewed
        
        self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:0];
        
         self.title = @"橙色";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
