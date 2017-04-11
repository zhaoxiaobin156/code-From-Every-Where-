//
//  UIStepperVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UIStepperVC.h"

@interface UIStepperVC ()
{
    UILabel *_label;
}
@end

@implementation UIStepperVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(50, 190, 50, 50)];
    _label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label];
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    
    //设置最小值
    stepper.minimumValue = 60;
    
    //设置最大值
    stepper.maximumValue = 100;
    
    //设置默认值
    stepper.value = 80;
    
    //设置递增递减的值
    stepper.stepValue = 2;
    
    //是否可以循环
    stepper.wraps = YES;
    
    [stepper addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
//    stepper.tintColor = [UIColor redColor];
    
    [self.view addSubview:stepper];
}

- (void)changeValue:(UIStepper *)stepper
{
    //当前值
    NSLog(@"value == %g",stepper.value);
    
    //步进数
    NSLog(@"stepValue == %g",stepper.stepValue);
    
    _label.text = [NSString stringWithFormat:@"%g",stepper.value];
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
