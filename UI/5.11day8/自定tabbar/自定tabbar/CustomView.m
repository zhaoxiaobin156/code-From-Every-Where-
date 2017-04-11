//
//  CustomView.m
//  自定tabbar
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed:@"tabbar_bg@2x"];
        
        //打开交互
        self.userInteractionEnabled = YES;
        
        //创建tabbarItem按钮
        [self createButton:frame];
    }
    return self;
}

- (void)createButton:(CGRect)frame
{
    for(int i = 0; i < 4; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        button.frame = CGRectMake(frame.size.width / 4 * i, 0, frame.size.width / 4, frame.size.height);
        
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"tab%d_n@2x",i+1]] forState:UIControlStateNormal];
        
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"tab%d_s@2x",i+1]] forState:UIControlStateSelected];
        
        if (i == 0) {
            button.selected = YES;
        }
        
        button.tag = 100 + i;
        
        [button addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button];
    }
}

- (void)changeView:(UIButton *)button
{
    for(int i = 0; i < 4; i++)
    {
        UIButton *btn = (UIButton *)[self viewWithTag:100 + i];
        btn.selected = NO;
    }
    
    button.selected = YES;
    
    //每个按钮的tag值对应不同视图控制器 通过tag来标记视图控制器
    self.block(button.tag - 100);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
