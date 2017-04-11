//
//  RootViewController.m
//  UIViewController
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (instancetype)init//在init里面不要调用self.view
{
    self = [super init];
    if (self) {
        NSLog(@"Root:2.构造方法");
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    NSLog(@"Root:3视图正在加载中。。。");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Root:4视图加载完成");
    
    //创建UI控件
    [self createUI];
    
}

- (void)createUI
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"present" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)present
{
    //控制器跳转
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    /*
     UIModalTransitionStyleCoverVertical    从下向上(默认)
     UIModalTransitionStyleCrossDissolve      渐变
     UIModalTransitionStyleFlipHorizontal   横向翻转
     UIModalTransitionStylePartialCurl       翻书(自带返回天赋)
     */
    
    //1.字符串赋值 UI控件还没被创建必须写viewDidLoad之前
    secondVC.str = @"字符串传值";
    
//    secondVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //viewDidLoad执行完成 UI控件已经创建
    [self presentViewController:secondVC animated:YES completion:nil];
    
    //2.UI控件传值 viewDidLoad之后 UI控件已经创建
    //secondVC.label.text = @"UI控件传值";
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"Root:5视图即将显示");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"Root:6视图已经显示");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"Root:7视图即将消失");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"Root:8视图已经消失");
}

//对象被销毁的时候调用
- (void)dealloc
{
    //作用：释放当前对象的内存
    NSLog(@"Root:9析构函数");
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
