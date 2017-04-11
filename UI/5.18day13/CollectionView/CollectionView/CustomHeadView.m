//
//  CustomHeadView.m
//  CollectionView
//
//  Created by 刘桂林 on 16/5/19.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomHeadView.h"

@implementation CustomHeadView

- (IBAction)deleteAction:(UIButton *)sender {
    
    self.block(sender.tag - 100);
}

@end
