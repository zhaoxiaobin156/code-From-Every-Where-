//
//  CustomCell.m
//  UICollectionView
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 110, 130)];
        
        [self.contentView addSubview:self.imgView];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, 110, 20)];
        
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        
        [self.contentView addSubview:self.nameLabel];
    }
    return self;
}

@end
