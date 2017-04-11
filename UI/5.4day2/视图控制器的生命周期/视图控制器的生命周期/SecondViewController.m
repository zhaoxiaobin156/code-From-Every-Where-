//
//  SecondViewController.m
//  视图控制器的生命周期
//
//  Created by 刘桂林 on 16/5/4.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

//构造方法
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Second:2构造方法");
        
    }
    return self;
}

//视图正在加载中
- (void)loadView
{
    [super loadView];
    NSLog(@"Second:3视图正在加载中");
}

//视图加载完成
- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSLog(@"Second:4视图加载完成");
    self.view.backgroundColor = [UIColor greenColor];
    
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"dismiss" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blackColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)dismiss:(UIButton *)button
{
    //销毁当前控制器对象
    [self dismissViewControllerAnimated:YES completion:nil];
}

//视图即将显示
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"Second:5视图即将显示");
}

//视图已经显示
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"Second:6视图已经显示");
}

//视图即将消失
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"Second:7视图即将消失");
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"Second:8视图已经消失");
}

//对象被销毁时调用
//释放内存
- (void)dealloc
{
    NSLog(@"Second:9释放内存");
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
