//
//  CustomHeadView.h
//  collectionView
//
//  Created by mac on 16/5/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomHeadView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UIButton *groupNameBtn;

@property(nonatomic,copy)void (^block)(NSInteger index);

@end
