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
    
    //1.隐藏系统的tabbar(系统tabbar高度49)
    self.tabBar.hidden = YES;
    
    //2.自定义tabbar
    self.customView = [[CustomView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 60, self.view.frame.size.width, 60)];
    
    //点击按钮回调视图控制器在tabBarController中的位置
    //index代表图控制器tabBarController中的下标
    
    //block实现里面是不能用self 因为对象不会被释放 内存泄露
    __weak typeof(self) safeSelf = self;
    
    [self.customView setBlock:^(NSInteger index) {
        safeSelf.selectedIndex = index;
    }];
   
    [self.view addSubview:self.customView];
    
    ViewController1 *v1 = [[ViewController1 alloc] init];
    v1.view.backgroundColor = [UIColor redColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:v1];
    
    ViewController2 *v2 = [[ViewController2 alloc] init];
    v2.view.backgroundColor = [UIColor orangeColor];
    
    ViewController3 *v3 = [[ViewController3 alloc] init];
    v3.view.backgroundColor = [UIColor yellowColor];
    
    ViewController4 *v4 = [[ViewController4 alloc] init];
    v4.view.backgroundColor = [UIColor greenColor];
    
    self.viewControllers = @[nav,v2,v3,v4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
