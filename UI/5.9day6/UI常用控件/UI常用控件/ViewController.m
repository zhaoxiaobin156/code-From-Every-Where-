//
//  ViewController.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "UISegmentedControlVC.h"
#import "UISliderVC.h"
#import "UISwitchVC.h"
#import "UIActivityIndicatorViewVC.h"
#import "UIProgressViewVC.h"
#import "UIActionSheetVC.h"
#import "UIAlertViewVC.h"
#import "UIStepperVC.h"
#import "UIAlertControllerVC.h"
#import "UIWebViewVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *arr = @[@"UISegmentedControl",@"UISlider",@"UISwitch",@"UIActivityIndicatorView",@"UIProgressView",@"UIActionSheet",@"UIAlertView",@"UIStepper",@"UIAlertController",@"UIWebView"];
    
    for(int i = 0; i < arr.count; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(100, 100 + i * 50, 200, 40);
        [button setTitle:arr[i] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor redColor];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 100 + i;
        [self.view addSubview:button];
    }
    
}

- (void)buttonClick:(UIButton *)button
{
    switch (button.tag) {
        case 100:
        {
            UISegmentedControlVC *segmentVC = [[UISegmentedControlVC alloc] init];
            [self.navigationController pushViewController:segmentVC animated:YES];
        }
            break;
        case 101:
        {
            UISliderVC *sliderVC = [[UISliderVC alloc] init];
            [self.navigationController pushViewController:sliderVC animated:YES];
        }
            break;
        case 102:
        {
            UISwitchVC *switchVC = [[UISwitchVC alloc] init];
            [self.navigationController pushViewController:switchVC animated:YES];
        }
            break;
        case 103:
        {
            UIActivityIndicatorViewVC *activitVC = [[UIActivityIndicatorViewVC alloc] init];
            [self.navigationController pushViewController:activitVC animated:YES];
        }
            break;
        case 104:
        {
            UIProgressViewVC *progressVC = [[UIProgressViewVC alloc] init];
            [self.navigationController pushViewController:progressVC animated:YES];
        }
            break;
        case 105:
        {
            UIActionSheetVC *sheetVC = [[UIActionSheetVC alloc] init];
            [self.navigationController pushViewController:sheetVC animated:YES];
        }
            break;
        case 106:
        {
            UIAlertViewVC *alertVC = [[UIAlertViewVC alloc] init];
            [self.navigationController pushViewController:alertVC animated:YES];
        }
            break;
        case 107:
        {
            UIStepperVC *stepperVC = [[UIStepperVC alloc] init];
            [self.navigationController pushViewController:stepperVC animated:YES];
        }
            break;
        case 108:
        {
            UIAlertControllerVC *alertCVC = [[UIAlertControllerVC alloc] init];
            [self.navigationController pushViewController:alertCVC animated:YES];
        }
            break;
        case 109:
        {
            UIWebViewVC *webViewVC = [[UIWebViewVC alloc] init];
            [self.navigationController pushViewController:webViewVC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
