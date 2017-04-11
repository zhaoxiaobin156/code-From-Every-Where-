//
//  ViewController.m
//  UINavigationBar
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    //设置navigationBar的背景图片
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"map"] forBarMetrics:UIBarMetricsDefault];
    
    //设置背景颜色
    //1.ios7之前的用法
//    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    //2.ios7之后的用法
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    //设置状态栏字体颜色
    /*
     UIBarStyleDefault          = 0,   //白底,字体黑色(默认)
     UIBarStyleBlack            = 1,   //黑底,字体白色
     
   	 UIBarStyleBlackOpaque      = 1, // Deprecated. Use UIBarStyleBlack
     UIBarStyleBlackTranslucent = 2, // Deprecated. Use UIBarStyleBlack and set the translucent property to YES
     */
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //设置导航栏是否透明(默认透明)
    //不透明 -> UI控件自动下移64
//    self.navigationController.navigationBar.translucent = NO;
    
    //不带动画移动navigationBar
//    self.navigationController.navigationBarHidden = YES;
//    self.navigationController.navigationBar.hidden = YES;
    
#if 0
    
    //系统默认toolBar是隐藏 //坐标44
    self.navigationController.toolbarHidden = NO;
    
    //UIBarButtonItem用于导航栏和工具栏的按钮
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:nil action:nil];
    
//    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"item1" style:UIBarButtonItemStylePlain target:nil action:nil];
//    
//    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithTitle:@"item2" style:UIBarButtonItemStylePlain target:nil action:nil];
//    
//    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithTitle:@"item3" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //平等分割符号
//    UIBarButtonSystemItemFlexibleSpace 系统自动设置间距
//    UIBarButtonSystemItemFixedSpace 固定间距 需要手动设置间距
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    space.width = 120;
    
    self.toolbarItems = @[item1,space,item2,space,item3];
    
#endif
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
