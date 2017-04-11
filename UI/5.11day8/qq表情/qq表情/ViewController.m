//
//  ViewController.m
//  qq表情
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface ViewController ()
{
    UIImageView *_bigImgView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, HEIGHT - 120, WIDTH, 120)];
    
    scrollView.pagingEnabled = YES;
    
    scrollView.showsHorizontalScrollIndicator = NO;
    
    scrollView.contentSize = CGSizeMake(WIDTH * 3, 0);
    
    NSInteger count = 1;
    
    for(int i = 0; i < 3; i++) //页
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(WIDTH * i, 0, WIDTH, 120)];
        
        [scrollView addSubview:view];
        
        for(int j = 0; j < 4; j++) //行
        {
            for(int k = 0; k < 10; k++)//列
            {
                UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(30 + 30*k, 30*j, 30, 30)];
                
                //%03代表有三位数 如果不足在前面补0
                imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%03ld@2x",count]];
                
                count ++ ;
                
                UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(large:)];
                
                imgView.userInteractionEnabled = YES;
                
                [imgView addGestureRecognizer:tap];
                
                [view addSubview:imgView];
            }
        }
    }
    
    [self.view addSubview:scrollView];
    
    //显示点击图片
    _bigImgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
    
    [self.view addSubview:_bigImgView];
}

- (void)large:(UITapGestureRecognizer *)tap
{
    UIImageView *imgView = (UIImageView *)tap.view;
    
    _bigImgView.image = imgView.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
