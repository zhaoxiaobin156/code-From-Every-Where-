//
//  ViewController.m
//  存储用户账户和密码
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "LoginSuccessViewController.h"

@interface ViewController ()
{
    UITextField *_accountT;
    UITextField *_passWordT;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUI];
}

-(void)createUI{
    
    for(int i = 0; i < 2; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 50 + 45 * i, 60, 40)];
        if (i == 0) {
            label.text = @"账号:";
        }else
        {
            label.text = @"密码:";
        }
        label.textAlignment = NSTextAlignmentRight;
        [self.view addSubview:label];
    }
    
    NSDictionary *dict = [[NSUserDefaults standardUserDefaults] objectForKey:@"account"];
    
    _accountT = [[UITextField alloc] initWithFrame:CGRectMake(80, 50, 200, 40)];
    _accountT.borderStyle = UITextBorderStyleRoundedRect;
    _accountT.text = dict[@"userName"];
    [self.view addSubview:_accountT];
    
    _passWordT = [[UITextField alloc] initWithFrame:CGRectMake(80, 95, 200, 40)];
    _passWordT.borderStyle = UITextBorderStyleRoundedRect;
    _passWordT.text = dict[@"passWord"];
    [self.view addSubview:_passWordT];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    LoginSuccessViewController *success = [[LoginSuccessViewController alloc] init];
    
    NSMutableDictionary *dictM = [[NSMutableDictionary alloc] init];
    
    [dictM setObject:_accountT.text forKey:@"userName"];
    [dictM setObject:_passWordT.text forKey:@"passWord"];
    
    [[NSUserDefaults standardUserDefaults] setObject:dictM forKey:@"account"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self presentViewController:success animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
