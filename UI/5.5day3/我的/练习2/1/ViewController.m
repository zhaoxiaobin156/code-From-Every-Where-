//
//  ViewController.m
//  1
//
//  Created by mac on 16/5/25.
//  Copyright (c) 2016年 mac. All rights reserved.
//

//在父视图上添加三个Label,三个Button,一个按钮.点击这个按钮,取到父视图上所有的Label,进行移除操作

#import "ViewController.h"

@interface ViewController (){
    UIButton *_btn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i < 3; i++) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(70 * i + 20, 50, 60, 50)];
        label.backgroundColor = [UIColor greenColor];
        label.text = @"lable";
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(70 * i + 20, 150, 60, 50);
        button.backgroundColor = [UIColor blueColor];
        [button setTitle:@"button" forState:UIControlStateNormal];
        [self.view addSubview:button];
    }
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame = CGRectMake(250, 100, 100, 50);
    _btn.backgroundColor = [UIColor redColor];
    [_btn setTitle:@"删除lable" forState:UIControlStateNormal];
    [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

-(void)remove{
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UILabel class]]) {
            //[view removeFromSuperview]; //点击删除
            //view.hidden = YES; //点击隐藏
            view.hidden = !view.hidden; //点击隐藏，再次点击显示(可循环)
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
