//
//  UISliderVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "UISliderVC.h"

@interface UISliderVC ()

@end

@implementation UISliderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    
    //设置最小值(默认为0)
    slider.minimumValue = 100;
    
    //设置最大值(默认为1)
    slider.maximumValue = 1000;
    
    //设置滑块当前位置
    slider.value = 550;
    
    //设置滑过的颜色
//    slider.minimumTrackTintColor = [UIColor redColor];
    
    //设置未滑过的颜色
//    slider.maximumTrackTintColor = [UIColor greenColor];
    
    //设置滑块按钮的颜色
//    slider.thumbTintColor = [UIColor blackColor];
    
    //设置滑块图片
//    [slider setThumbImage:[UIImage imageNamed:@"Fav_Filter_ALL_HL@2x"] forState:UIControlStateNormal];
    
    //添加事件
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:slider];
}

- (void)changeValue:(UISlider *)slider
{
    //当前value
    NSLog(@"slider == %g",slider.value);
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
