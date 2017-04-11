//
//  Dog.m
//  6.retain在复合类中的使用
//
//  Created by mac on 16/4/22.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc
{
    NSLog(@"Dog delloc");
    
    [super dealloc];
}

@end
