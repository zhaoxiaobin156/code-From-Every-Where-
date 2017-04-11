//
//  CustomHeadView.m
//  ColloctionViewXib定制
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomHeadView.h"

@implementation CustomHeadView

- (void)awakeFromNib {
    // Initialization code
    
    
}

- (IBAction)deleteAction:(UIButton *)sender {
    
//    self.block(sender.tag - 100);
    
    [self.delegate passButtonTag:sender.tag - 100];
}

@end
