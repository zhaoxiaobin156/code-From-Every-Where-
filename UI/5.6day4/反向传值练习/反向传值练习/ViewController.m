//
//  ViewController.m
//  反向传值练习
//
//  Created by 刘桂林 on 16/5/6.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "AppDelegate.h"

@interface ViewController ()<PassValue>
{
    UILabel *_label;
    UILabel *_label2;
    UILabel *_label3;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"present" forState:UIControlStateNormal];
    button.frame = CGRectMake(125, 400, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 150, 50)];
    _label.backgroundColor = [UIColor redColor];
    _label.textColor = [UIColor whiteColor];
     _label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label];
    
    _label2 = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 150, 50)];
    _label2.backgroundColor = [UIColor redColor];
    _label2.textColor = [UIColor whiteColor];
     _label2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label2];
    
    _label3 = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 150, 50)];
    _label3.backgroundColor = [UIColor redColor];
    _label3.textColor = [UIColor whiteColor];
     _label3.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label3];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    _label3.text = app.name;
}

- (void)present
{
    SecondViewController *second = [[SecondViewController alloc] init];
    second.delegate = self;
    
    [second setBlock:^(NSString *name) {
        _label2.text = name;
    }];
    
    [self presentViewController:second animated:YES completion:nil];
    
    second.label.text = _label.text;
}

- (void)passValue:(NSString *)str
{
    _label.text = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
