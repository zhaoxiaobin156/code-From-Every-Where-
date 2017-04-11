//
//  ViewController.m
//  UIView层次关系
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //父视图 红色
    UIView *fatherView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    fatherView.backgroundColor = [UIColor redColor];
    [self.view addSubview:fatherView];
    
    //子视图1 橙色
    UIView *sonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    sonView.backgroundColor = [UIColor orangeColor];
    sonView.tag = 100;
    [fatherView addSubview:sonView];
    
    //子视图2 黄色
    UIView *sonView2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    sonView2.backgroundColor = [UIColor yellowColor];
    sonView2.tag = 101;
    [fatherView addSubview:sonView2];
    
    //子视图3 绿色
    UIView *sonView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    sonView3.backgroundColor = [UIColor greenColor];
    [fatherView addSubview:sonView3];
    
    //子视图4 青色
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    label.backgroundColor = [UIColor cyanColor];
    [fatherView addSubview:label];
    
    //获取父视图
    UIView *view = sonView.superview;
    NSLog(@"father == %@",NSStringFromCGRect(view.frame));
    
    //判断sonView是否是fatherView的子视图
    if ([sonView isDescendantOfView:fatherView]) {
        NSLog(@"我是亲生的");
    }
    
    //获取子视图
    NSLog(@"count == %ld",fatherView.subviews.count);
    for(UIView *view in fatherView.subviews)
    {
        if (view.tag == 100) {
            NSLog(@"sonView");
        }
        
        if(view.tag == 101){
            NSLog(@"sonView2");
        }
        
        if ([view isKindOfClass:[UILabel class]]) {
            NSLog(@"label");
        }
    }
    
    //把一个子视图移动到最上层
    [fatherView bringSubviewToFront:sonView];
    
    //把一个子视图移动到最下层
    [fatherView sendSubviewToBack:sonView];
    
    //删除一个子视图
    [sonView removeFromSuperview];
    
    [sonView3 removeFromSuperview];
    
    NSLog(@"label == %@",label);
    
#if 0
    //交换子视图层次关系
    [fatherView exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
    
    UIView *sonView4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    sonView4.backgroundColor = [UIColor blueColor];
    
    //在特定位置插入一个视图
    [fatherView insertSubview:sonView4 atIndex:3];
    [fatherView insertSubview:sonView4 aboveSubview:sonView];
    [fatherView insertSubview:sonView4 belowSubview:sonView];
#endif

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
