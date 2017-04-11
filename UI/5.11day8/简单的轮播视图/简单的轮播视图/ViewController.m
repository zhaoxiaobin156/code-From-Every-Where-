//
//  ViewController.m
//  简单的轮播视图
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 250)];
    
    scrollView.pagingEnabled = YES;
    
    scrollView.contentSize = CGSizeMake(WIDTH * 4, 0);
    
    scrollView.showsHorizontalScrollIndicator = NO;
    
    scrollView.delegate = self;
    
    scrollView.tag = 100;
    
    [self.view addSubview:scrollView];
    
    for(int i = 0; i < 4; i++)
    {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i * WIDTH, 0, WIDTH, 250)];
        
        imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i + 1]];
        
        [scrollView addSubview:imgView];
    }
    
    //UIPageControl
    UIPageControl *page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 250, WIDTH, 30)];
    
    page.numberOfPages = 4;
    
    page.backgroundColor = [UIColor lightGrayColor];
    
    //未走点的颜色
    page.pageIndicatorTintColor = [UIColor greenColor];
    
    //当前点的颜色
    page.currentPageIndicatorTintColor = [UIColor redColor];
    
    [page addTarget:self action:@selector(imgMove:) forControlEvents:UIControlEventValueChanged];
    
    page.tag = 101;
    
    [self.view addSubview:page];
}

- (void)imgMove:(UIPageControl *)page
{
    NSLog(@"current == %ld",page.currentPage);
    
    //得到scrollview
    UIScrollView *scrollView = (UIScrollView *)[self.view viewWithTag:100];
    
    //每次偏移currentpage个宽度
    [scrollView setContentOffset:CGPointMake(page.currentPage * WIDTH , 0) animated:YES];
    
}


#pragma mark -- UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    UIPageControl *page = (UIPageControl *)[self.view viewWithTag:101];
    
    //首先得到当前页数
    NSInteger index = scrollView.contentOffset.x / WIDTH;
    
    //页数的index刚好和currentPage是相等的
    page.currentPage = index;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
