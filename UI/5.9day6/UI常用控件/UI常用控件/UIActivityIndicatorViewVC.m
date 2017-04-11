//
//  UIActivityIndicatorViewVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UIActivityIndicatorViewVC.h"

@interface UIActivityIndicatorViewVC ()

@end

@implementation UIActivityIndicatorViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //样式
    //UIActivityIndicatorViewStyleWhiteLarge 大白色
    //UIActivityIndicatorViewStyleWhite 小白色
    //UIActivityIndicatorViewStyleGray 小灰色
    
    UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    //宽高改不了
    activity.frame = CGRectMake(100, 200, 100, 50);
    
    //开始转动
    [activity startAnimating];
    
    //停止转动
//    [activity stopAnimating];
    
    //设置停止动画不隐藏
//    activity.hidesWhenStopped = NO;
    
    //设置颜色
    activity.color = [UIColor grayColor];
    
    //设置状态栏的网络提示
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    [self.view addSubview:activity];
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
