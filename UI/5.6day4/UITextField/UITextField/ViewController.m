//
//  ViewController.m
//  UITextField
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 40)];
    
    //键盘弹出 Hardware -> Keyboard -> Toggle
    
    //边框样式
//    UITextBorderStyleNone,
//    UITextBorderStyleLine,
//    UITextBorderStyleBezel,
//    UITextBorderStyleRoundedRect
    textF.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textF];
    
    //设置提示文字
    textF.placeholder = @"请输入账号";
    
    //设置背景图片
//    textF.background = [UIImage imageNamed:@"2.jpg"];
    
    //设置密文输入
    textF.secureTextEntry = YES;
    
    //清理按钮模式
    /*
     UITextFieldViewModeNever, //没有清除按钮(默认)
     UITextFieldViewModeWhileEditing, //编辑时有清除按钮
     UITextFieldViewModeUnlessEditing, //不编辑时有清除按钮
     UITextFieldViewModeAlways //一直有清除按钮
     */
    textF.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    
#if 0
    //设置return键的样式
    textF.returnKeyType = UIReturnKeySearch;
    
    //设置键盘类型
    //    textF.keyboardType = UIKeyboardTypePhonePad;
    
    //设置键盘样式
    /*
     UIKeyboardAppearanceDefault,          // Default apperance for the current input method.
     UIKeyboardAppearanceDark NS_ENUM_AVAILABLE_IOS(7_0),
     UIKeyboardAppearanceLight NS_ENUM_AVAILABLE_IOS(7_0),
     UIKeyboardAppearanceAlert = UIKeyboardAppearanceDark,  // Deprecated
     */
    //    textF.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    //再次编辑是否清空
//    textF.clearsOnBeginEditing = YES;
    
    //文本对齐方式
//    textF.textAlignment = NSTextAlignmentCenter;
    
    //设置文本字体大小
//    textF.font = [UIFont systemFontOfSize:24];
    
    //文本滚动
    textF.adjustsFontSizeToFitWidth = YES;
    
    //设置自动缩小显示的最小字体大小
    textF.minimumFontSize = 14;
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
