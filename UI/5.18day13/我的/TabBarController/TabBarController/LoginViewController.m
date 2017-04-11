//
//  LoginViewController.m
//  TabBarController
//
//  Created by mac on 16/5/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "LoginSuccessViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//storyBoard反向传值 必须实现的方法
-(IBAction)returnValue:(UIStoryboardSegue *)segue{
    
    //因为点击取消和注册完成都会调用这个方法，通过identifier来区分点击的按钮
    if ([segue.identifier isEqualToString:@"cancel"]) {
        NSLog(@"取消注册");
    }
    if ([segue.identifier isEqualToString:@"success"]) {
        
        //获取源控制器
        RegistViewController *registVC = segue.sourceViewController;
        self.userT.text = registVC.userT.text;
        self.passT.text = registVC.passT.text;
    }
}

//跳转页面,会走这个方法
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //根据连线标识具体判断是跳转到哪个视图控制器
    if ([segue.identifier isEqualToString:@"LoginSuccess"]) {
        
        //获取目标控制器
        LoginSuccessViewController *loginSuccessVC = segue.destinationViewController;
        loginSuccessVC.userName = self.userT.text;
        loginSuccessVC.passWord = self.passT.text;
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
