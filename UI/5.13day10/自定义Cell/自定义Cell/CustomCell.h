//
//  CustomCell.h
//  自定义Cell
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface CustomCell : UITableViewCell

@property (nonatomic,strong) UIImageView *imgView;

@property (nonatomic,strong) UILabel *nameLabel;

@property (nonatomic,strong) UILabel *speakLabel;

- (void)setPerson:(Person *)p1;

@end
