//
//  ShareModel.m
//  单例反向传值
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ShareModel.h"

@implementation ShareModel

+ (id)model
{
    //static保证变量的唯一性和持久性
    static ShareModel *model = nil;
    if (model == nil) {
        model = [[ShareModel alloc] init];
    }
    return model;
}

@end
