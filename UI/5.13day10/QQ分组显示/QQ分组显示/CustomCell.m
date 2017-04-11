//
//  CustomCell.m
//  QQ分组显示
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 10, 120, 130)];
        
        [self addSubview:self.imgView];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 20, 200, 30)];
        
        self.nameLabel.textColor = [UIColor redColor];
        [self addSubview:self.nameLabel];
    
        self.priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 70, 200, 50)];
        
        [self addSubview:self.priceLabel];
    }
    return self;
}

- (void)setPerson:(Person *)p1
{
    self.imgView.image = [UIImage imageNamed:p1.imgName];
    
    self.nameLabel.text = p1.name;
    
    self.priceLabel.text = p1.price;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
