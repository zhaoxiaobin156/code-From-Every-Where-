//
//  RootViewController.m
//  代理反向传值
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()<PassValue>
{
    UILabel *_label;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 120, 50)];
    _label.textColor = [UIColor blackColor];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_label];
}

- (void)present
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    //3.设置代理对象
    secondVC.delegate = self;
    
    [self presentViewController:secondVC animated:YES completion:nil];
}

//2.遵循协议实现协议方法
- (void)passValue:(NSString *)str
{
    _label.text = str;
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
