//
//  ViewController.m
//  无限轮播视图
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface ViewController ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
    UIPageControl *_page;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 250)];
    
    _scrollView.pagingEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(WIDTH * 6, 0);
    
    _scrollView.showsHorizontalScrollIndicator = NO;
    
    _scrollView.delegate = self;
    
    [self.view addSubview:_scrollView];
    
    for(int i = 0; i < 6; i++)
    {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(WIDTH * i, 0, WIDTH, 250)];
        
        //在第1张图片前面放第4张图片
        if (i == 0) {
            imgView.image = [UIImage imageNamed:@"4.jpg"];
        }
        
        //在第4张图片后面放第1张图片
        else if(i == 5)
        {
            imgView.image = [UIImage imageNamed:@"1.jpg"];
        }
        else
        {
            imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        }
        
        [_scrollView addSubview:imgView];
    }
    
    //偏移一个屏幕宽度
    _scrollView.contentOffset = CGPointMake(WIDTH, 0);
    
//    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(imgMoveAnimation) userInfo:nil repeats:YES];
    
    _page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 250, WIDTH, 30)];
    
    _page.backgroundColor = [UIColor lightGrayColor];
    
    _page.pageIndicatorTintColor = [UIColor greenColor];
    
    _page.currentPageIndicatorTintColor = [UIColor redColor];
    
    _page.numberOfPages = 4;
    
    [_page addTarget:self action:@selector(imgMove) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_page];
    
}

- (void)imgMove
{
    [_scrollView setContentOffset:CGPointMake((_page.currentPage + 1) * WIDTH, 0) animated:YES];
}

- (void)imgMoveAnimation
{
    [_scrollView setContentOffset:CGPointMake(_scrollView.contentOffset.x + WIDTH, 0) animated:YES];
}

#define mark -- UIScrollViewDelegate

//用手滑动图片时候图片停止时触发
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / WIDTH;
    
    if (index == 0) {
        
        _page.currentPage = 3;
        
        _scrollView.contentOffset = CGPointMake(WIDTH * 4, 0);
    }
    else if (index == 5) {
        
        _page.currentPage = 0;
        
        _scrollView.contentOffset = CGPointMake(WIDTH, 0);
    }else
    {
        _page.currentPage = index - 1;
    }
    
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / WIDTH;
    
    if (index == 0) {
        
        _page.currentPage = 3;
        
        _scrollView.contentOffset = CGPointMake(WIDTH * 4, 0);
    }
    else if (index == 5) {
        
        _page.currentPage = 0;
        
        _scrollView.contentOffset = CGPointMake(WIDTH, 0);
    }else
    {
        _page.currentPage = index - 1;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
