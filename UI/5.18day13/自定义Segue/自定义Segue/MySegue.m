//
//  MySegue.m
//  自定义Segue
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "MySegue.h"

@implementation MySegue

//重写perform 只要storyBorad的连线是继承于MySegue类 都会执行这个方法
- (void)perform
{
    //取到当前控制器视图
    UIViewController *vc = self.sourceViewController;
    
    //dismiss
    [vc dismissViewControllerAnimated:YES completion:nil];
}

@end
