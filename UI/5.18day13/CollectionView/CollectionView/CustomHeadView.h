//
//  CustomHeadView.h
//  CollectionView
//
//  Created by 刘桂林 on 16/5/19.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomHeadView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (nonatomic,copy) void(^block)(NSInteger index);

@end
