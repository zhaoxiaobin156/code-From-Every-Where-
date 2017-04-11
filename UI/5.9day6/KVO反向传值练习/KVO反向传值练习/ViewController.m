//
//  ViewController.m
//  KVO反向传值练习
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
@interface ViewController ()
{
    UITextField *_field1;
    UITextField *_field2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"登录" style:UIBarButtonItemStylePlain target:self action:@selector(login)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(registerVC)];
    
    //1.初始化被监听的对象
    self.regist = [[RegisterViewController alloc] init];
    
    //2.添加观察者对象
    [self.regist addObserver:self forKeyPath:@"model" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
}

- (void)registerVC
{
    [self.navigationController pushViewController:self.regist animated:YES];
}

- (void)login
{
    LoginViewController *login = [[LoginViewController alloc] init];
    login.model = self.regist.model;
    [self.navigationController pushViewController:login animated:YES];
}

//4.回调
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"model"]) {
        self.regist = (RegisterViewController *)object;
        _field1.text = self.regist.model.userName;
        _field2.text = self.regist.model.passWord;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
