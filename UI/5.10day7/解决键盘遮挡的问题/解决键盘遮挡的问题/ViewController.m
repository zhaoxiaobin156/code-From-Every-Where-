//
//  ViewController.m
//  解决键盘遮挡的问题
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
    UITextField *_selectTextF;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for(int i = 0; i < 10; i++)
    {
        UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(20, 50 * i + 50, 200, 45)];
        
        textF.borderStyle = UITextBorderStyleRoundedRect;
        
        textF.delegate = self;
        
        textF.placeholder = [NSString stringWithFormat:@"第%d个textField",i + 1];
        
        [self.view addSubview:textF];
    }
    
    //频道：UIKeyboardWillShowNotification 监听键盘即将升起
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    //键盘收起的时候
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHidden) name:UIKeyboardWillHideNotification object:nil];
}

- (void)keyboardWillShow:(NSNotification *)noti
{
    //键盘最后停止时候的高度
    
    //得到键盘的信息
    NSDictionary *dic = noti.userInfo;
    
    //键盘停止时候的值
    NSValue *keyBoardValue = [dic objectForKey:UIKeyboardFrameEndUserInfoKey];
    
    //转为CGRect变量
    CGRect keyBoardFrame = keyBoardValue.CGRectValue;
    
    //1.获取textField底部y坐标
    //2.算textField和键盘y坐标的差值
    //差值代表被遮住的部分
    NSInteger offset = _selectTextF.frame.origin.y + _selectTextF.frame.size.height - keyBoardFrame.origin.y;
    
    //如果遮住
    if (offset > 0) {
        
        //视图向上移动差值
        self.view.frame = CGRectMake(0, -offset, self.view.frame.size.width, self.view.frame.size.height);
    }
}

- (void)keyboardWillHidden
{
    //键盘即将下落的时候，让self.view回到起始位置
    self.view.frame = self.view.bounds;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _selectTextF = textField;
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
