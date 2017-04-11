//
//  OrangeViewController.m
//  视图控制器跳转
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "OrangeViewController.h"
#import "GreenViewController.h"

@interface OrangeViewController ()

@end

@implementation OrangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"橙色";
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
}

- (void)pop
{
    //回到指定视图控制器
    NSArray *arr = self.navigationController.viewControllers;
    
#if 1
    for(UIViewController *vc in arr)
    {
        if ([vc isKindOfClass:[GreenViewController class]]) {
            [self.navigationController popToViewController:vc animated:YES];
        }
    }
#endif
    
#if 0
    [self.navigationController popToViewController:arr[1] animated:YES];
#endif
    
#if 0
    for(UIViewController *vc in arr)
    {
        if ([vc.title isEqualToString:@"绿色"]) {
            [self.navigationController popToViewController:vc animated:YES];
        }
    }
#endif
    
    
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
