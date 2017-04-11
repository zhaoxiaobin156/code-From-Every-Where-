//
//  SecondViewController.h
//  代理反向传值
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

//1.声明协议 设置代理对象的属性
@protocol PassValue <NSObject>

- (void)passValue:(NSString *)str;

@end

@interface SecondViewController : UIViewController


@property (nonatomic,weak) id <PassValue> delegate;

@end
