//
//  SecondViewController.h
//  反向传值练习
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassValue <NSObject>

- (void)passValue:(NSString *)str;

@end

@interface SecondViewController : UIViewController

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,weak) id <PassValue> delegate;

@property (nonatomic,copy) void(^block)(NSString *name);

@end
