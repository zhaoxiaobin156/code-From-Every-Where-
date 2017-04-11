//
//  ViewController.m
//  UITextFieldDelegate
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 300, 40)];
    textF.borderStyle = UITextBorderStyleRoundedRect;
    textF.placeholder = @"请输入银行密码";
    [self.view addSubview:textF];
    
    UITextField *textF2 = [[UITextField alloc] initWithFrame:CGRectMake(50, 250, 300, 40)];
    textF2.borderStyle = UITextBorderStyleRoundedRect;
    textF2.placeholder = @"请输入银行账号";
    textF2.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:textF2];
    
    textF2.delegate = self;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Editing)];
    [self.view addGestureRecognizer:tap];
}

- (void)Editing
{
    //结束self.view上所有控件的编辑模式
    [self.view endEditing:YES];
}

//1）是否可以进入编辑模式
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

//2）文本框已经进入编辑模式
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"text == %@",textField.text);
}

//3）文本框是否可以结束编辑模式
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

//4）文本框已结束编辑模式
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"text == %@",textField.text);
}

//5）是否可以点击clear按钮
-(BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}

//6）是否可以点击return按钮
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //结束编辑
    [textField resignFirstResponder];
    
    //成为第一响应者
    [textField becomeFirstResponder];
    
    return YES;
}

//7）允许修改内容
- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{

    NSLog(@"length == %ld location == %ld",range.length,range.location);
    
    //location限制字数为5
    if (range.location >= 5) {
        return NO;
    }
    return YES;


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
