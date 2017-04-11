//
//  UIAlertControllerVC.m
//  UI常用控件
//
//  Created by mac on 16/5/30.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "UIAlertControllerVC.h"

@interface UIAlertControllerVC ()

@end

@implementation UIAlertControllerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //判断手机系统版本
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
    NSLog(@"verson = %g",version);
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(show)];
    
    [self.view addGestureRecognizer:tap];
}

-(void)show{
    
    //ios8.0之后出的一个类
    
    //样式
    //UIAlertControllerStyleActionSheet = 0(ActionSheet样式)
    //UIAlertControllerStyleAlert(AlertView样式)
    
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"标题" message:@"这是提示内容" preferredStyle:UIAlertControllerStyleActionSheet];
    
    //UIAlertAction 按钮类
    //参数1:按钮的title值
    //参数2:
    //参数3:按钮回调事件
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"点击了取消按钮");
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"点击了确定按钮");
    }];
    
    [alertC addAction:action];
    [alertC addAction:action2];
    
    [self presentViewController:alertC animated:YES completion:nil];
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
