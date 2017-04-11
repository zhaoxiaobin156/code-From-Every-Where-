//
//  CustomCell.m
//  ColloctionViewXib定制
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
    //复用的时候不会被调用 只有开始创建时候会被调用
    
    //拉伸图片不会变形 会超出父视图边界
    self.imgView.contentMode = UIViewContentModeScaleAspectFill;
    
    //超出父视图边界图片截掉
    self.clipsToBounds = YES;
}

@end
