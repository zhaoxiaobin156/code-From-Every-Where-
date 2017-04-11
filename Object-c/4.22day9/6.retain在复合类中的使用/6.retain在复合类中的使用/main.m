//
//  main.m
//  6.retain在复合类中的使用
//
//  Created by mac on 16/4/22.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //需求：在MRC中如何把狗的对象传入，且内存不能泄漏
        
        Dog *wanC = [[Dog alloc] init];
        
        Person *xiaoM = [[Person alloc] init];
        
        NSLog(@"%ld",wanC.retainCount);
        
        [xiaoM setDog:wanC];
        
        NSLog(@"%ld",wanC.retainCount);
        
        [wanC release];
        
        NSLog(@"%ld",wanC.retainCount);
        
        [xiaoM release];
    }
    return 0;
}
