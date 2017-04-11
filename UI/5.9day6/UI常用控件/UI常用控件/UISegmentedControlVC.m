//
//  UISegmentedControlVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "UISegmentedControlVC.h"

@interface UISegmentedControlVC ()

@end

@implementation UISegmentedControlVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //分段控制器
    UISegmentedControl *segement = [[UISegmentedControl alloc] initWithItems:@[@"小学",@"初中",@"高中"]];
    segement.frame = CGRectMake(100, 200, 200, 40);
    [self.view addSubview:segement];
    
    //设置颜色
    segement.tintColor = [UIColor redColor];
    
    //设置标题
    [segement setTitle:@"大学" forSegmentAtIndex:2];
    
    //设置图片
    [segement setImage:[UIImage imageNamed:@"bj_top_jt@2x"] forSegmentAtIndex:0];
    
    //插入标题
    [segement insertSegmentWithTitle:@"高中" atIndex:2 animated:YES];
    
    //插入图片
    [segement insertSegmentWithImage:[UIImage imageNamed:@"Fav_Filter_ALL_HL@2x"] atIndex:4 animated:YES];
    
    //移除内容
//    [segement removeSegmentAtIndex:4 animated:YES];
//    [segement removeAllSegments];
    
    //设置默认选中项
    segement.selectedSegmentIndex = 1;
    
    //获取某一项的title
    NSString *title = [segement titleForSegmentAtIndex:1];
    NSLog(@"title = %@",title);
    
    //事件处理
    //除了button之外所有的点击控件都用UIControlEventValueChanged触发
    [segement addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)changeValue:(UISegmentedControl *)segment
{
    NSLog(@"index == %ld",segment.selectedSegmentIndex);
    NSLog(@"title == %@",[segment titleForSegmentAtIndex:segment.selectedSegmentIndex]);
//    [segment imageForSegmentAtIndex:0];
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
