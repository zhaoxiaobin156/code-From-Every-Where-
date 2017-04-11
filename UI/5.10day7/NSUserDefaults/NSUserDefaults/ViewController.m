//
//  ViewController.m
//  NSUserDefaults
//
//  Created by 刘桂林 on 16/5/10.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //单例
//    [NSUserDefaults standardUserDefaults];
    
    //[NSUserDefaults standardUserDefaults] 沙河存储文件在plist文件里面
    
    //存储
    [[NSUserDefaults standardUserDefaults] setObject:@"hello" forKey:@"world"];
//    [[NSUserDefaults standardUserDefaults] setInteger:@"" forKey:@""];
//    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@""];
    
    //闪存同步数据
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //沙河家目录(ios8.0之后，每一次运行程序沙盒路径都会发生变化，系统会自动将上一次的文件拷贝到当前沙盒路径中，并且自动删除上一次的沙盒文件夹)
    NSLog(@"home == %@",NSHomeDirectory());
    
    //读取数据
//    NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:@"world"];
    
    //删除
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"world"];
    
    Model *model = [[Model alloc] init];
    model.name = @"小明";
    
    //归档
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:model];
    
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"name"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //解档
    NSData *data2 = [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
    
    Model *model2;
    
    model2 = [NSKeyedUnarchiver unarchiveObjectWithData:data2];
    
    NSLog(@"name == %@",model2.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
