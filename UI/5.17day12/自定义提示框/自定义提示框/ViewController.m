//
//  ViewController.m
//  自定义提示框
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()<AlterDelegate>

@property (nonatomic,strong) CustomView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.view.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:self.customView];
    
    [UIView animateWithDuration:0.2 animations:^{
        self.customView.alpha = 1.0;
    } completion:nil];
    
}

- (CustomView *)customView
{
    if (!_customView) {
        
        _customView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, 250, 150) title:@"您的余额已不足,请及时充值" cancelButton:@"取消" otherButton:@"确定"];
        _customView.delegate = self;
        //_customView.alpha = 0;
    }
    return _customView;
}

- (void)passButtonTag:(NSInteger)index customView:(CustomView *)customView
{
    if (index == 100) {
        
        [customView removeFromSuperview];
        
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
