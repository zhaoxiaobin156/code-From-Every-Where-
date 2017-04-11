//
//  ViewController.m
//  UIScrollerView
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
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    
    //设置滚动内容的大小
    scrollView.contentSize = CGSizeMake(WIDTH * 3, HEIGHT * 3);
    
    for(int i = 0; i < 3; i++)
    {
        for(int j = 0; j < 3; j++)
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(WIDTH * j, HEIGHT *i, WIDTH, HEIGHT)];
            
            view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
            
            [scrollView addSubview:view];
        }
    }
    
    //是否分页滚动
    scrollView.pagingEnabled = YES;
    
    //设置内容位置 scrollview的偏移量
//    [scrollView setContentOffset:CGPointMake(WIDTH, HEIGHT)];
    
    //是否显示水平滚动条
    scrollView.showsHorizontalScrollIndicator = NO;
    
    //是否显示垂直滚动条
    scrollView.showsVerticalScrollIndicator = NO;
    
    //弹簧效果(设为NO不能拉出空白部分，默认为YES)
//    scrollView.bounces = NO;
    
    //设置代理对象
    scrollView.delegate = self;
    
//    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(imgViewMove:) userInfo:scrollView repeats:YES];
    
    [self.view addSubview:scrollView];
}

- (void)imgViewMove:(NSTimer *)timer
{
    UIScrollView *scrollView = (UIScrollView *)timer.userInfo;
    [scrollView setContentOffset:CGPointMake(WIDTH, 0) animated:YES];
}

#pragma mark -- UIScrollViewDelegate

//即将开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
//    NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}

//视图停止时调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
//    NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}

//视图动画结束时调用
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSLog(@"视图动画结束时调用");
}


#if 0

//拖动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//        NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}




//即将停止拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}

//已经停止拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}

//即将减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"point == %@",NSStringFromCGPoint(scrollView.contentOffset));
}

//点击状态栏回到顶部
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    return YES;
}

//已经滑到顶部
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
//    NSLog(@"已经滑到顶部");
}

#endif

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
