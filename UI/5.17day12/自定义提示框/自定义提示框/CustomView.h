//
//  CustomView.h
//  自定义提示框
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

//加一个类
@class CustomView;

@protocol AlterDelegate <NSObject>

- (void)passButtonTag:(NSInteger )index customView:(CustomView *)customView;

@end

@interface CustomView : UIView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title cancelButton:(NSString *)cancel otherButton:(NSString *)other;

@property (nonatomic,strong) id <AlterDelegate> delegate;

@end
