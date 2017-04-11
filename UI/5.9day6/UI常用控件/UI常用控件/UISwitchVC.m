//
//  UISwitchVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UISwitchVC.h"

@interface UISwitchVC ()

@end

@implementation UISwitchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //宽高系统固定
    UISwitch *swth = [[UISwitch alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    
    //设置开的颜色
//    swth.onTintColor = [UIColor redColor];
    
    //设置滑块的颜色
//    swth.thumbTintColor = [UIColor blackColor];
    
    //设置开关状态(默认关闭)
    swth.on = YES;
    
    //添加事件
    [swth addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:swth];
}

- (void)valueChange:(UISwitch *)swth
{
    if (swth.isOn) {
        NSLog(@"开");
    }else
    {
        NSLog(@"关");
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
