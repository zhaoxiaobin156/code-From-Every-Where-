//
//  ViewController.m
//  UIView动画练习
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _view.backgroundColor = [UIColor redColor];
    [self.view addSubview:_view];
    
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(timeGo) userInfo:nil repeats:YES];
    
}

- (void)timeGo
{
    [UIView animateWithDuration:2.0 animations:^{
        _view.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    } completion:^(BOOL finished) {
        _view.frame = CGRectMake(0, 0, 100, 100);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
