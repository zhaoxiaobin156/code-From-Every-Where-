//
//  RootViewController.m
//  UINavigationController
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
     （1）navigationBar(高度44) 状态栏20 导航栏64
     （2）customContent  — 有自定义的ViewController提供
     （3）navigationToolbar(高度44)
     */
    
//    self.navigationController //装载视图控制器的导航控制器
    //导航控制器通过入栈和出栈来管理视图控制器
    
    //self.navigationController.toolbarHidden = NO;
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
    
    NSLog(@"count == %ld",self.navigationController.viewControllers.count);
    
    //设置标题
    self.title = [NSString stringWithFormat:@"第%ld层",self.navigationController.viewControllers.count];
}

- (void)push
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    //将视图控制器压入导航控制器的栈容器中 push入栈
    //顶层：顶栈
    //底层：基栈
    [self.navigationController pushViewController:secondVC animated:YES];
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
