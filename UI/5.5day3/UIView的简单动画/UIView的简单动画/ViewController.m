//
//  ViewController.m
//  UIView的简单动画
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
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    
    UIView *fatherView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    fatherView.backgroundColor = [UIColor greenColor];
    [fatherView addSubview:view];
    
    //透明度 数值越小越透明(越透明越看不见)
    //子视图透明度会随着父视图透明度改变而改变
    //view.alpha = 0.3;
    //fatherView.alpha = 0.3;
    
    [self.view addSubview:fatherView];
    
#if 0
    //设置简单动画
    //1.开始动画
    [UIView beginAnimations:nil context:nil];
    
    //2.持续时间
    [UIView setAnimationDuration:2.0];
    
    //3.动画效果
    fatherView.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
    //4.提交动画
    [UIView commitAnimations];
#endif
    
    [UIView animateWithDuration:1.0 animations:^{
        //动画效果
        fatherView.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    } completion:^(BOOL finished) {
        //动画结束时调用
//        if (finished) {
//            fatherView.frame = CGRectMake(0, 0, 200, 200);
//        }
        fatherView.frame = CGRectMake(0, 0, 200, 200);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
