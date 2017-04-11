//
//  UIProgressViewVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UIProgressViewVC.h"

@interface UIProgressViewVC ()

@end

@implementation UIProgressViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIProgressView *progress = [[UIProgressView alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
    
    //未走过的颜色
//    progress.trackTintColor = [UIColor redColor];
    
    //走过的颜色
//    progress.progressTintColor = [UIColor greenColor];
    
    [self.view addSubview:progress];
    
    //计时器让进度条走
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(progress:) userInfo:progress repeats:YES];
}

- (void)progress:(NSTimer *)time
{
    UIProgressView *progress2 = (UIProgressView *)time.userInfo;
    
    //progress2.progress当前进度条的值
    [progress2 setProgress:progress2.progress + 0.1 animated:YES];
    
    //进度条的范围是0.0 ~ 1.0(不可以修改范围)
    if (progress2.progress == 1) {
        if ([time isValid]) {
            [time invalidate];
        }
    }
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
