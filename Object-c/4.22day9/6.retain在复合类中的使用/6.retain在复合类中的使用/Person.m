//
//  Person.m
//  6.retain在复合类中的使用
//
//  Created by mac on 16/4/22.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        _dog = [[Dog alloc] init];
        
        //_dog = nil; //空对象指针进行release不会产生影响，也不会调dealloc
        
        //注意： 有多少个alloc，就调用多少次dealloc
    }
    
    return self;
}

-(void)setDog:(Dog *)dog
{
    //_dog = dog; err 如果_dog本身有空间，那么会泄漏
    
    //标准写法如下：
    if(_dog != dog)
    {
        [_dog release];  //先把_dog原始空间释放；如果_dog为nil，什么都不做
        _dog = [dog retain];
    }
}

- (void)dealloc
{
    [_dog release];  //在Person类即将dealloc前，对_dog进行release最合理
    
    NSLog(@"Person dealloc");
    
    [super dealloc];
}

@end
