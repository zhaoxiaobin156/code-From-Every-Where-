//
//  LoginViewController.m
//  TabBarController
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "LoginSuccessViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//StoryBoard反向传值 必须实现的方法
//segue就是连线
- (IBAction)returnValue:(UIStoryboardSegue *)segue
{
    //因为点击取消和注册完成都会调用这个方法，通过identifier来区分点击的按钮
    if ([segue.identifier isEqualToString:@"cancel"]) {
        
        NSLog(@"取消注册");
    }
    
    if ([segue.identifier isEqualToString:@"registSuccess"]) {
        
        //获取源控制器
        RegisterViewController *registerVC = segue.sourceViewController;
        
        self.userT.text = registerVC.userT.text;
        
        self.passT.text = registerVC.passT.text;
    }
}

//连线跳转页面,会走这个方法
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //根据连线标识具体判断是跳转到哪个视图控制器
    if ([segue.identifier isEqualToString:@"loginSuccess"]) {
        
        //取到目标控制器对象
        LoginSuccessViewController *loginVC = segue.destinationViewController;
        
        //只能字符串传值 不能UI控件传值(loginVC还没有实例化)
        loginVC.userName = self.userT.text;
        
        loginVC.passWord = self.passT.text;
    }
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
