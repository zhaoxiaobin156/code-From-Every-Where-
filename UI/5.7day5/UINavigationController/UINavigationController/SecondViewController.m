//
//  SecondViewController.m
//  UINavigationController
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //push入栈时 系统自带back返回按钮
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
    
    NSLog(@"count == %ld",self.navigationController.viewControllers.count);
    
    self.title = [NSString stringWithFormat:@"第%ld层",self.navigationController.viewControllers.count];

}




- (void)pop
{
    //出栈 让当前视图控制器出栈
    [self.navigationController popViewControllerAnimated:YES];
    
    //返回根视图控制器
    //[self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)dealloc
{
    NSLog(@"销毁L");
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
