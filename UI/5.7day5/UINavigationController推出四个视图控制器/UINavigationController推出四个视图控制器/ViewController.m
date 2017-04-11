//
//  ViewController.m
//  UINavigationController推出四个视图控制器
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

//利用UINavigationController完成下列关系:root->va->vb->vc (用同一个类来实现4层，最多就只能弹出到第4层)

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 250, 100, 50);
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushViewController:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    self.title = [NSString stringWithFormat:@"第%ld层",self.navigationController.viewControllers.count];
    
    if (self.navigationController.viewControllers.count == 4) {
        button.enabled = NO;
    }
}

- (void)pushViewController:(UIButton *)button
{
    ViewController *viewC = [[ViewController alloc] init];
    NSLog(@"view == %p",viewC);
    [self.navigationController pushViewController:viewC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
