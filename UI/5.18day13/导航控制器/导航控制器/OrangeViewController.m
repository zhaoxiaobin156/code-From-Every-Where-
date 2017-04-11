//
//  OrangeViewController.m
//  导航控制器
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "OrangeViewController.h"
#import "YellowViewController.h"

@interface OrangeViewController ()

@end

@implementation OrangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)pushAction:(id)sender {
    
    //通过storyBoardID取到视图控制器对象
    YellowViewController *yellowVC = [self.storyboard instantiateViewControllerWithIdentifier:@"yellow"];
    
    yellowVC.str = @"111";
    
    [self.navigationController pushViewController:yellowVC animated:YES];
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
