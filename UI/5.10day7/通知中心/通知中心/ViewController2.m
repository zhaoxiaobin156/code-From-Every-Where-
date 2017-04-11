//
//  ViewController2.m
//  通知中心
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //发送通知
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"hello" object:@"发送消息"];
    
    //带一个参数
    [[NSNotificationCenter defaultCenter] postNotificationName:@"hello" object:nil];
    
    //带两个参数
    NSMutableDictionary *dictM = [NSMutableDictionary dictionaryWithObject:@"1"forKey:@"one"];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"hello" object:@"object消息" userInfo:dictM];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
