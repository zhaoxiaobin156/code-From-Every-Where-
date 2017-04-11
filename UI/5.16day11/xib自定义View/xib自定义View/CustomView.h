//
//  CustomView.h
//  xib自定义View
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic,strong) void(^block)(NSInteger index);

@end
