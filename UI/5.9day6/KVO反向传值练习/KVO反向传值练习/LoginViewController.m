//
//  LoginViewController.m
//  KVO反向传值练习
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *arr = @[@"账号:",@"密码:"];
    for(int i = 0; i < 2; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 54 * i + 80, 50, 40)];
        label.text = arr[i];
        [self.view addSubview:label];
    }
    for(int i = 0; i < 2; i++)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 54 * i + 80, 50, 40)];
        switch (i) {
            case 0:
            {
                label.text = self.model.userName;
            }
                break;
            case 1:
            {
                label.text = self.model.passWord;
            }
                break;
            default:
                break;
        }
        [self.view addSubview:label];
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
