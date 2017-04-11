//
//  Person.m
//  1.NSDistionary的初认识
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)eat{
    NSLog(@"正在吃。。。");
}
-(void)sleep{
    NSLog(@"正在睡。。。");
}
-(void)play{
    NSLog(@"正在玩。。。");
}
-(void)action:(SEL)sel{
    
    //判断SEL中的方法是否响应，如果响应，则进入执行
    
    if ([self respondsToSelector:sel]) {
        [self performSelector:sel];
    }else{
        NSLog(@"没有响应");
    }
}
@end
