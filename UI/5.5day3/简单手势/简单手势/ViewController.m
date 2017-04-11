//
//  ViewController.m
//  简单手势
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
#if 0
//点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor)];
    //设置点击次数触发方法
//    tap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tap];
    
    /*1.当视图hidden属性设置为YES的时候，或者userInteractionEnabled=NO
     的时候，就无法进行人机交互
     2.如果父视图的交互是关闭的，那么子视图的交互也是关闭的
     self.view.userInteractionEnabled = NO;
     */
#endif
    
#if 0
    //缩放手势(按住Alt键)
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor)];
    [self.view addGestureRecognizer:pinch];
#endif
    
#if 0
    //旋转手势(按住Alt键)
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor)];
    [self.view addGestureRecognizer:rotation];
#endif
    
//#if 0
    //滑动手势(快速滑动才有效果)
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor)];
    //设置滑动方向
    /*
     
     UISwipeGestureRecognizerDirectionRight  //从左往后(默认)
     UISwipeGestureRecognizerDirectionLeft   //从右往左
     UISwipeGestureRecognizerDirectionUp     //从下往上
     UISwipeGestureRecognizerDirectionDown   //从上往下
     */
    swipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:swipe];
//#endif
    
#if 0
//拖动手势(无论滑动快慢都可以触发)
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor)];
    [self.view addGestureRecognizer:pan];
#endif
    
    //长按手势有两种状态
    UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(arc4randomColor:)];
    //设置长按最小时间(系统默认为0.5秒)
    longP.minimumPressDuration = 1.0;
    [self.view addGestureRecognizer:longP];
    
}

-(void)arc4randomColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:arc4random() % 256 / 255.0];
}

- (void)arc4randomColor:(UILongPressGestureRecognizer *)longPress
{
    if (longPress.state == UIGestureRecognizerStateBegan) {
        self.view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:arc4random() % 256 / 255.0];
    }
    if (longPress.state == UIGestureRecognizerStateEnded) {
        NSLog(@"长按结束");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
