//
//  RootViewController.m
//  视图控制器的生命周期
//
//  Created by 刘桂林 on 16/5/4.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end


@implementation RootViewController

//构造方法
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Root:2构造方法");
        
        //视图控制器本身自带一个view
        self.view.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

//视图正在加载中
- (void)loadView
{
    [super loadView];
    NSLog(@"Root:3视图正在加载中");
}

//视图加载完成
- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSLog(@"Root:4视图加载完成");
    
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"present" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(present:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)present:(UIButton *)button
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    //控制器跳转
    [self presentViewController:secondVC animated:YES completion:nil];
}

//视图即将显示
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"Root:5视图即将显示");
}

//视图已经显示
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"Root:6视图已经显示");
}

//视图即将消失
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"Root:7视图即将消失");
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"Root:8视图已经消失");
}

//对象被销毁时调用
//释放内存
- (void)dealloc
{
    NSLog(@"Root:9释放内存");
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
