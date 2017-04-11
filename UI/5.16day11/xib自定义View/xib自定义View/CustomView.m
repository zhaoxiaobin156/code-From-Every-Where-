//
//  CustomView.m
//  xib自定义View
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)buttonAction:(UIButton *)sender {
    
    self.block(sender.tag);
}

@end
