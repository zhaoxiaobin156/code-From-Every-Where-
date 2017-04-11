//
//  ViewController.m
//  UITouch
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//包含5个属性
//1.window 触摸所处的窗口
//2.view 触摸产生时所处的视图
//3.tapcount 点击次数 可以判断单机，双击或者更多的次数
//4.timestamp 时间戳 单位是秒 记录变化的时间
//5.phase 触摸事件的状态(4个周期中的某个状态)

//触摸开始
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //获取坐标信息
    //获取到触摸点
    UITouch *touch = [touches anyObject];
    
    //转化为当前视图的具体坐标
    CGPoint point = [touch locationInView:self.view];
    
    NSLog(@"point == %@",NSStringFromCGPoint(point));
}

//触摸移动
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //获取坐标信息
    //获取到触摸点
    UITouch *touch = [touches anyObject];
    
    //转化为当前视图的具体坐标
    CGPoint point = [touch locationInView:self.view];
    
    NSLog(@"point == %@",NSStringFromCGPoint(point));
    
    
}

//触摸结束
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //获取坐标信息
    //获取到触摸点
    UITouch *touch = [touches anyObject];
    
    //转化为当前视图的具体坐标
    CGPoint point = [touch locationInView:self.view];
    
    NSLog(@"point == %@",NSStringFromCGPoint(point));
}

//触摸取消(来电话的时候)
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    //获取坐标信息
    //获取到触摸点
    UITouch *touch = [touches anyObject];
    
    //转化为当前视图的具体坐标
    CGPoint point = [touch locationInView:self.view];
    
    NSLog(@"point == %@",NSStringFromCGPoint(point));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
