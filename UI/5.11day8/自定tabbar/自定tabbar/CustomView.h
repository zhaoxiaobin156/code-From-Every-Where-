//
//  CustomView.h
//  自定tabbar
//
//  Created by 刘桂林 on 16/5/11.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIImageView

@property (nonatomic,copy) void(^block)(NSInteger index);

@end
