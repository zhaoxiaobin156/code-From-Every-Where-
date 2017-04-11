//
//  LoginSuccessViewController.m
//  存储用户账户和密码
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "LoginSuccessViewController.h"

@interface LoginSuccessViewController ()

@end

@implementation LoginSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
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
    
    for(int i = 0; i < 2; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 50 + 45 * i, 100, 40)];
        if (i == 0) {
            label.text = dict[@"userName"];
        }else
        {
            label.text = dict[@"passWord"];
        }
        
        [self.view addSubview:label];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
