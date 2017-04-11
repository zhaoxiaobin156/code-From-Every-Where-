//
//  CustomView.m
//  自定义UIView
//
//  Created by 刘桂林 on 16/5/7.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imgView = [[UIImageView alloc] initWithFrame:self.bounds];
//        NSLog(@"imgView == %@",NSStringFromCGRect(_imgView.frame));
        _imgView.image = [UIImage imageNamed:@"4.jpg"];
        [self addSubview:_imgView];
        
        _selectView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width - 30, frame.size.height - 30, 30, 30)];
        _selectView.image = [UIImage imageNamed:@"1"];
        _selectView.hidden = YES;
        [self addSubview:_selectView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
