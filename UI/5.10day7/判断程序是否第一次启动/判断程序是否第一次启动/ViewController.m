//
//  ViewController.m
//  判断程序是否第一次启动
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BOOL ret = [[NSUserDefaults standardUserDefaults] boolForKey:@"isVisit"];
    
    if (ret) {
        
        //已经访问过
        self.view.backgroundColor = [UIColor redColor];
    }else
    {
        //第一次访问
        self.view.backgroundColor = [UIColor yellowColor];
        
        //设置bool值为YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isVisit"];
        
        //同步数据
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
