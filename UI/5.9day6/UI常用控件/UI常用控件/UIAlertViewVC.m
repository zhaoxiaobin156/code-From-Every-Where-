//
//  UIAlertViewVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UIAlertViewVC.h"

@interface UIAlertViewVC ()<UIAlertViewDelegate>

@end

@implementation UIAlertViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(alertShow)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)alertShow
{
    //参数1：主标题
    //参数2：发送的信息
    //参数3：代理对象
    //参数4：取消按钮
    //参数5：其他按钮
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"英雄联盟" message:@"您的账号已被封" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index == %ld",buttonIndex);
//    if (buttonIndex == 0) {
//        
//    }else
//    {
//        
//    }
    NSLog(@"title == %@",[alertView buttonTitleAtIndex:buttonIndex]);
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
