//
//  ViewController.m
//  视图控制器跳转
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "GreenViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"红色";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(push)];
}

- (void)push
{
    GreenViewController *green = [[GreenViewController alloc] init];
    [self.navigationController pushViewController:green animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
