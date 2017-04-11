//
//  CustomHeadView.m
//  QQ分组显示
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomHeadView.h"

@implementation CustomHeadView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.groupName = [[UILabel alloc] initWithFrame:frame];
        
        [self addSubview:self.groupName];
        
        self.tipImgView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width - 25, 5, 15, 15)];
        
        self.tipImgView.image = [UIImage imageNamed:@"down@2x"];
        
        [self addSubview:self.tipImgView];
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
