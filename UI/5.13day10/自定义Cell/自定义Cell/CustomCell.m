//
//  CustomCell.m
//  自定义Cell
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
        
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 10, 100, 130)];
        
        [self.contentView addSubview:_imgView];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 20, 200, 30)];
        
        _nameLabel.textColor = [UIColor redColor];
        
        [self.contentView addSubview:_nameLabel];
        
        _speakLabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 70, 200, 60)];
        
        _speakLabel.numberOfLines = 0;
        
        [self.contentView addSubview:_speakLabel];
    }
    return self;
}

- (void)setPerson:(Person *)p1
{
    self.imgView.image = [UIImage imageNamed:p1.imgName];
    
    self.nameLabel.text = p1.name;
    
    self.speakLabel.text = p1.speakStr;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
