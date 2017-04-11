//
//  ViewController1.m
//  通知中心
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeValue:) name:@"hello" object:nil];
}

- (void)changeValue:(NSNotification *)noti
{
    NSLog(@"v1.userInfo == %@",noti.userInfo);
    NSLog(@"v1.object == %@",noti.object);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ViewController2 *v2 = [[ViewController2 alloc] init];
    
    [self presentViewController:v2 animated:YES completion:nil];
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
