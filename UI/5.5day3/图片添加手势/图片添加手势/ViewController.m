//
//  ViewController.m
//  图片添加手势
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imgView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 300)];
    _imgView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imgView];
    
    //添加点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(large:)];
    //打开交互
    _imgView.userInteractionEnabled = YES;
    [_imgView addGestureRecognizer:tap];
    
}

- (void)large:(UITapGestureRecognizer *)tap
{
    NSLog(@"frame == %@",NSStringFromCGRect(tap.view.frame));
    [UIView animateWithDuration:1.0 animations:^{
        tap.view.frame = self.view.bounds;
    } completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
