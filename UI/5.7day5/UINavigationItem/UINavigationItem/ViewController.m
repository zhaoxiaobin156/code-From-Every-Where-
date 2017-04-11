//
//  ViewController.m
//  UINavigationItem
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //通过文字设置导航条左边按钮
    //设置当前导航条左边或者右边中间按钮必须用self.navigationItem
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"文字" style:UIBarButtonItemStylePlain target:self action:@selector(printf:)];
    
    //通过系统设置导航条左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(printf:)];
    
    //通过图片设置导航条右边按钮
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Fav_Filter_ALL_HL@2x"] style:UIBarButtonItemStylePlain target:self action:@selector(imgNamed:)];
    
    //设置导航条右边按钮自定义
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 50, 30);
    [button setImage:[UIImage imageNamed:@"001@2x"] forState:UIControlStateNormal];
    button.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    //设置中间自定义视图
//    self.navigationItem.title = @"hello";
//    self.title = @"world";
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    textF.borderStyle = UITextBorderStyleRoundedRect;
    self.navigationItem.titleView = textF;
    
    //设置导航条返回按钮
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (void)printf:(UIBarButtonItem *)button
{
    NSLog(@"title == %@",button.title);
    //button.title = @"文字"
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)imgNamed:(UIBarButtonItem *)item
{
    //item.image
    NSLog(@"图片按钮");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
