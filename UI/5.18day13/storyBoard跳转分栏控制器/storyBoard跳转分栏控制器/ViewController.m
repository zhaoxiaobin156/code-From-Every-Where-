//
//  ViewController.m
//  storyBoard跳转分栏控制器
//
//  Created by 刘桂林 on 16/5/19.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "TabbarViewController.h"
#import "LoginFaildViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)login:(id)sender {
    
    if (self.userT.text.length != 0) {
        
        TabbarViewController *tabbar = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbar"];
        
        [self presentViewController:tabbar animated:YES completion:nil];
    }else
    {
        LoginFaildViewController *faild = [self.storyboard instantiateViewControllerWithIdentifier:@"faild"];
        
        [self.navigationController pushViewController:faild animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
