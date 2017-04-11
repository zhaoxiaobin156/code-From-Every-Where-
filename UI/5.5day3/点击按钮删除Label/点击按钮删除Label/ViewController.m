//
//  ViewController.m
//  点击按钮删除Label
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for(int i = 0; i < 3; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90 * i + 50, 100, 80, 30)];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(90 * i + 50, 200, 80, 30);
        
        label.text = @"UILabel";
        [button setTitle:@"UIButton" forState:UIControlStateNormal];
        
        label.backgroundColor = [UIColor redColor];
        button.backgroundColor = [UIColor redColor];
        
        [self.view addSubview:button];
        [self.view addSubview:label];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(150, 300, 100, 50);
    [button setTitle:@"删除delete" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(delete:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)delete:(UIButton *)button
{
    //取到父视图上的所有子视图
    NSArray *arr = self.view.subviews;
    
    for(UIView *view in arr)
    {
        //判别所有子视图是否属于label类
        if ([view isKindOfClass:[UILabel class]]) {
            [view removeFromSuperview];
//            view.hidden = !view.hidden;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
