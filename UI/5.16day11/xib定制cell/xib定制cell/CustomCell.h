//
//  CustomCell.h
//  xib定制cell
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *iconImgView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (nonatomic,strong) Person *p1;

@end
