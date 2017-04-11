//
//  ShareModel.h
//  单例反向传值
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareModel : NSObject

+ (id)model;

@property (nonatomic,strong) NSString *name;

@end
