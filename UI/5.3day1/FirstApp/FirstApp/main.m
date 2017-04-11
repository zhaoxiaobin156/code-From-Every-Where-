//
//  main.m
//  FirstApp
//
//  Created by 刘桂林 on 16/5/3.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //1.创建UIApplication类（单例）
        //2.AppDelegate为UIApplication类的代理对象
        //3.启动循环（工程）
        //NSStringFromClass 把类转化为字符串
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
