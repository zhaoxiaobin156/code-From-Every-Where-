//
//  RootViewController.m
//  StoryBoard视图控制器
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

//视图控制器初始化构造方法
//- (instancetype)init

//视图控制器xib加载构造方法
//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"storyBoard加载");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)presentAction:(id)sender {
    
    //连线视图控制器跳转
    //storyBoard只能present 不能dismiss 所以dismiss需要手动写
    [self performSegueWithIdentifier:@"present" sender:nil];
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
