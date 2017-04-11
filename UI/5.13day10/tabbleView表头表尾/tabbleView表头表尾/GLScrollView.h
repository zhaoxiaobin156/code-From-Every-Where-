//
//  GLScrollView.h
//  自动轮播封装
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLScrollView : UIView <UIScrollViewDelegate>
{
    NSTimer *_timer;
}

@property (nonatomic,strong) UIScrollView *scrollView;

@property (nonatomic,strong) UIPageControl *page;

@end
