//
//  ViewController.m
//  KVO反向传值
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    UILabel *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    _label.backgroundColor = [UIColor grayColor];
    _label.textColor = [UIColor redColor];
    [self.view addSubview:_label];
    
    //1.初始化被监听的对象
    self.second = [[SecondViewController alloc] init];
    
    //2.添加观察者对象
    [self.second addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self presentViewController:self.second animated:YES completion:nil];
}

//4.被监听对象的属性被修改时的回调
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"name"]) {
        self.second = (SecondViewController *)object;
        _label.text = self.second.name;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"1---%s",__FUNCTION__);
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"1---%s",__FUNCTION__);
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"1---%s",__FUNCTION__);
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"1---%s",__FUNCTION__);
}








@end
