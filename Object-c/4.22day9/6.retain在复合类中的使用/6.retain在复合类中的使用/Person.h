//
//  Person.h
//  6.retain在复合类中的使用
//
//  Created by mac on 16/4/22.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Dog.h"

@interface Person : NSObject
{
    Dog *_dog;  //人类中，有狗的属性
}

//-(void)setDog:(Dog *)dog;

//arc模式： strong 修饰自定义对象
//mrc模式： retain 修饰自定义对象

@property(nonatomic,retain)Dog *dog;

@end
