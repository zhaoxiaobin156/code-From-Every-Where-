//
//  CustomView.m
//  自定义提示框
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomView.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title cancelButton:(NSString *)cancel otherButton:(NSString *)other
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.layer.cornerRadius = 5;
        
        self.layer.masksToBounds = YES;
        
        self.center = CGPointMake(WIDTH / 2, HEIGHT / 2);
        
        self.backgroundColor = [UIColor whiteColor];
        
//主标题
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, frame.size.width - 20, 50)];
        
        label.textAlignment = NSTextAlignmentCenter;
        
        label.numberOfLines = 0;
        
        label.text = title;
        
        label.textColor = [UIColor redColor];
        
        [self addSubview:label];
        
//取消按钮
        UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        cancelButton.frame = CGRectMake(30, frame.size.height - 60, 50, 30);
        
        [cancelButton setTitle:cancel forState:UIControlStateNormal];
        
        cancelButton.tag = 100;
        
        [cancelButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        cancelButton.backgroundColor = [UIColor redColor];
        
        cancelButton.tintColor = [UIColor whiteColor];
        
        [self addSubview:cancelButton];
        
//其他按钮
        UIButton *otherButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        otherButton.frame = CGRectMake(frame.size.width - 80, frame.size.height - 60, 50, 30);
        
        [otherButton setTitle:other forState:UIControlStateNormal];
        
        otherButton.tag = 101;
        
        [otherButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        otherButton.backgroundColor = [UIColor redColor];
        
        otherButton.tintColor = [UIColor whiteColor];
        
        [self addSubview:otherButton];
    }
    return self;
}

- (void)buttonAction:(UIButton *)button
{
    [self.delegate passButtonTag:button.tag customView:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
