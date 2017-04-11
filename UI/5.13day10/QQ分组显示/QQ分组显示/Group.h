//
//  Group.h
//  QQ分组显示
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject

//组名字
@property (nonatomic,copy) NSString *groupName;

//组是否收起
@property (nonatomic,assign) BOOL isHidden;

//组里面放好友
@property (nonatomic,strong) NSMutableArray *friendArrM;

@end
