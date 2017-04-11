//
//  NextViewController.h
//  CollectionView
//
//  Created by 刘桂林 on 16/5/19.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemModel.h"

@interface NextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (nonatomic,strong) ItemModel *model;

@end
