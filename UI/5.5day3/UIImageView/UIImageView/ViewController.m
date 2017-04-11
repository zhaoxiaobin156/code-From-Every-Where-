//
//  ViewController.m
//  UIImageView
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    imgView.backgroundColor = [UIColor redColor];
    //设置图片
    imgView.image = [UIImage imageNamed:@"psb13.jpg"];
    [self.view addSubview:imgView];
    
    //设置图片显示类型
    /*
     UIViewContentModeScaleToFill, 拉伸内容布满整个视图,会导致内容变形 // 默认
     UIViewContentModeScaleAspectFit, 拉伸内容,内容比例不变 图片不会超出边界
     UIViewContentModeScaleAspectFill, 拉伸内容,内容比例不变,但是会超出视图边界
     */
    imgView.contentMode = UIViewContentModeScaleAspectFill;
//    imgView.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
