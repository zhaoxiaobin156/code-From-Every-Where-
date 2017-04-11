//
//  CustomCell.m
//  xib定制cell
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}

//xib注册不走这个方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.iconImgView.frame = CGRectMake(200, 0, 200, 150);
    }
    return self;
}

//xib注册不走这个方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"frame == ");
    }
    return self;
}

//xib注册会走这个方法
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

//- (void)drawRect:(CGRect)rect
//{
//    self.iconImgView.frame = CGRectMake(200, 0, 200, 150);
//}

- (void)setP1:(Person *)p1
{
    self.iconImgView.image = [UIImage imageNamed:p1.icon];
    
    self.nameLabel.text = p1.name;
    
    self.priceLabel.text = p1.price;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
