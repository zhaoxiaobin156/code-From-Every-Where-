//
//  SecondViewController.h
//  Block反向传值
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

//1.声明
typedef void(^myBlock)(NSString *str);

@interface SecondViewController : UIViewController

//在.h声明的属性 暴露接口的 在.m声明的属性是私有的 不能在其他类直接访问
@property (nonatomic,copy) myBlock block;

@end
