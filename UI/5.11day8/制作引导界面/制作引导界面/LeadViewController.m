//
//  LeadViewController.m
//  制作引导界面
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "LeadViewController.h"
#import "CustomTabbar.h"

@interface LeadViewController ()

@end

@implementation LeadViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, 0);
    
    scrollView.pagingEnabled = YES;
    
    scrollView.showsHorizontalScrollIndicator = NO;
    
    [self.view addSubview:scrollView];
    
    for(int i = 0; i < 3; i++)
    {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
        
        imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        
        if (i == 2) {
            
            UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            
            button.frame = CGRectMake(100, 200, 200, 50);
            [button setTitle:@"进入主界面" forState:UIControlStateNormal];
            
            imgView.userInteractionEnabled = YES;
            
            [button addTarget:self action:@selector(presentMainViewController:) forControlEvents:UIControlEventTouchUpInside];
            
            [imgView addSubview:button];
        }
        
        [scrollView addSubview:imgView];
    }
}

- (void)presentMainViewController:(UIButton *)button
{
    CustomTabbar *customTabbar = [[CustomTabbar alloc] init];
    
//    [self presentViewController:customTabbar animated:YES completion:nil];
    
    [UIApplication sharedApplication].keyWindow.rootViewController = customTabbar;
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
