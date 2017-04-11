//
//  SecondViewController.m
//  UIViewController
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Second:2.构造方法");
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    NSLog(@"Second:3视图正在加载中。。。");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    NSLog(@"Second:4视图加载完成");
    
    [self createUI];
}

- (void)createUI
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"dismiss" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
    self.label.backgroundColor = [UIColor redColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    
    //字符串传值
    self.label.text = self.str;
    
    
    [self.view addSubview:self.label];
}

- (void)dismiss
{
    //销毁当前视图控制器对象
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"Second:5视图即将显示");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"Second:6视图已经显示");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"Second:7视图即将消失");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"Second:8视图已经消失");
}

//对象被销毁的时候调用
- (void)dealloc
{
    //作用：释放当前对象的内存
    NSLog(@"Second:9析构函数");
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
