
//
//  GLScrollView.m
//  自动轮播封装
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "GLScrollView.h"
#define WIDTH self.frame.size.width

@implementation GLScrollView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //创建scrollView
        [self createScrollViewAndPageController:frame];
    }
    return self;
}

- (void)createScrollViewAndPageController:(CGRect)frame
{
    
    //创建scrollView
    self.scrollView = [[UIScrollView alloc] initWithFrame:frame];
    
    self.scrollView.pagingEnabled = YES;
    
    self.scrollView.contentSize = CGSizeMake(frame.size.width * 6, 0);
    
    self.scrollView.delegate = self;
    
    for(int i = 0; i < 6; i++)
    {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i * frame.size.width, 0, frame.size.width, frame.size.height)];
        
        if (i == 0) {
            imgView.image = [UIImage imageNamed:@"4.jpg"];
        }
        else if(i == 5)
        {
            imgView.image = [UIImage imageNamed:@"1.jpg"];
        }else
        {
            imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        }
        
        [self.scrollView addSubview:imgView];
    }
    
    self.scrollView.contentOffset = CGPointMake(frame.size.width, 0);
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    
    [self addSubview:self.scrollView];
    
    //创建pageController
    self.page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, frame.size.height - 30, frame.size.width, 30)];
    
    self.page.numberOfPages = 4;
    
    self.page.backgroundColor = [UIColor lightGrayColor];
    
    self.page.pageIndicatorTintColor = [UIColor greenColor];
    
    self.page.currentPageIndicatorTintColor = [UIColor redColor];
    
    [self.page addTarget:self action:@selector(imgMove) forControlEvents:UIControlEventValueChanged];
    
    [self addSubview:self.page];
    
    //定时器
    _timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(imgMoveAnimation) userInfo:nil repeats:YES];
}

//拖动开始时停止定时器
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if ([_timer isValid]) {
        [_timer invalidate];
        _timer = nil;
    }
}

//拖动结束时开启定时器
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    _timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(imgMoveAnimation) userInfo:nil repeats:YES];
}

- (void)imgMove
{
    [self.scrollView setContentOffset:CGPointMake((self.page.currentPage + 1) * WIDTH, 0) animated:YES];
}

- (void)imgMoveAnimation
{
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x + WIDTH, 0) animated:YES];
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / WIDTH;
    
    if (index == 0) {
        
        self.scrollView.contentOffset = CGPointMake(WIDTH * 4, 0);
        
        _page.currentPage = 3;
    }
    else if(index == 5)
    {
        self.scrollView.contentOffset = CGPointMake(WIDTH, 0);
        
        _page.currentPage = 0;
    }else
    {
        _page.currentPage = index - 1;
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / WIDTH;
    
    if (index == 0) {
        
        self.scrollView.contentOffset = CGPointMake(WIDTH * 4, 0);
        
        _page.currentPage = 3;
    }
    else if(index == 5)
    {
        self.scrollView.contentOffset = CGPointMake(WIDTH, 0);
        
        _page.currentPage = 0;
    }else
    {
        _page.currentPage = index - 1;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
