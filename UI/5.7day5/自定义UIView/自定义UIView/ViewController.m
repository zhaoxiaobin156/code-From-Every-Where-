//
//  ViewController.m
//  自定义UIView
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for(int i = 0; i < 3; i++)
    {
        CustomView *customView = [[CustomView alloc] initWithFrame:CGRectMake(i * 110, 20, 100, 150)];
        [self.view addSubview:customView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(img:)];
        [customView addGestureRecognizer:tap];
    }
}

- (void)img:(UITapGestureRecognizer *)tap
{
    CustomView *customView = (CustomView *)tap.view;
    customView.selectView.hidden = !customView.selectView.hidden;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
