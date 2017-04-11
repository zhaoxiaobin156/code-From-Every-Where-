//
//  ViewController.m
//  通知中心
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    //1.通知中心频道必须保持一致
    //2.必须先注册通知中心才能发送通知
    //3.通知中心不是UI控件，所以需要视图控制器被销毁的时候移除
    
    //添加通知中心
    //参数3：频道
    //参数4：形参(在频道一致的情况下形参如果为nil就一定能接收到消息，如果不为nil则要与发出通知的形参保持一致才能接收到消息)
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeValue:) name:@"hello" object:nil];
}

- (void)changeValue:(NSNotification *)noti
{
    NSLog(@"v.userInfo == %@",noti.userInfo);
    NSLog(@"v.object == %@",noti.object);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ViewController1 *v1 = [[ViewController1 alloc] init];
    
    [self presentViewController:v1 animated:YES completion:nil];
}

- (void)dealloc
{
    //移除当前视图控制器的指定通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"hello" object:nil];
    
    //移除当前视图控制器的所有通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
