//
//  ViewController.m
//  UINavigationItem练习
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *_button;
    UIView *_view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //是否透明
    //设置navigationBar为不透明 UI控件的坐标都会自动下移64
    self.navigationController.navigationBar.translucent = NO;
    
    [self creatUI];
}

- (void)creatUI
{
    //导航按钮
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(0, 0, 50, 30);
    [_button setTitle:@"文字" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(viewHidden) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = _button;
    
    //背景视图
    _view = [[UIView alloc] initWithFrame:CGRectMake(0, -126, 375, 126)];
    _view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_view];
    
    //提示文字按钮
    NSArray *arr = @[@"文字",@"图片",@"音乐"];
    for(int i = 0; i < 3; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 42 * i, 375, 40);
        button.backgroundColor = [UIColor redColor];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:arr[i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(changeTitle:) forControlEvents:UIControlEventTouchUpInside];
        [_view addSubview:button];
    }
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hiddenView)];
    [self.view addGestureRecognizer:tap];
}

//提示框动画显示
- (void)viewHidden
{
    [UIView animateWithDuration:0.5 animations:^{
        _view.frame = CGRectMake(0, 0, 375, 126);
    } completion:nil];
}

- (void)hiddenView
{
    [UIView animateWithDuration:0.5 animations:^{
        _view.frame = CGRectMake(0, -126, 375, 126);
    } completion:nil];
}

//修改主标题文字
- (void)changeTitle:(UIButton *)button
{
    [_button setTitle:button.currentTitle forState:UIControlStateNormal];
    [UIView animateWithDuration:0.5 animations:^{
        _view.frame = CGRectMake(0, -126, 375, 126);
    } completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
