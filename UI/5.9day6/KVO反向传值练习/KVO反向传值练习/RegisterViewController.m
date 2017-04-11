//
//  RegisterViewController.m
//  KVO反向传值练习
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RegisterViewController.h"
#import "Model.h"
@interface RegisterViewController ()
{
    UITextField *_field1;
    UITextField *_field2;
}
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent = NO;
    
    NSArray *arr = @[@"账号:",@"密码:"];
    for(int i = 0; i < 2; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 54 * i + 80, 50, 40)];
        label.text = arr[i];
        [self.view addSubview:label];
    }
    
    _field1 = [[UITextField alloc] initWithFrame:CGRectMake(70, 80, 250, 40)];
    _field1.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_field1];
    
    _field2 = [[UITextField alloc] initWithFrame:CGRectMake(70, 134, 250, 40)];
    _field2.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_field2];
    

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册完成" style:UIBarButtonItemStylePlain target:self action:@selector(registerSuccess)];
}

- (void)registerSuccess
{
    
    Model *model = [[Model alloc] init];
    model.userName = _field1.text;
    model.passWord = _field2.text;
    
    //3.改变被监听对象属性的值
    [self setValue:model forKey:@"model"];
    
    [self.navigationController popViewControllerAnimated:YES];
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
