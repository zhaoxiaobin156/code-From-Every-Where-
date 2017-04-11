//
//  ViewController3.m
//  UITabBarController
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (instancetype)init
{
    self = [super init];
    if (self) {
        //ios7之后才有的方法 -> 设置图片(选择和未选择)和文字(自定义的)
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"黄色" image:[UIImage imageNamed:@"3_normal@2x"] selectedImage:[UIImage imageNamed:@"3_selected@2x"]];
        
        //设置图片(未选择)和文字(自定义的)
        //    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"绿色" image:[UIImage imageNamed:@"3_normal@2x"] tag:0];
        
        //设置徽标
        self.tabBarItem.badgeValue = @"+99";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
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
