//
//  ViewController.m
//  KVO
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
{
    UILabel *_label;
    Person *_p1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button setTitle:@"change" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(changeValue) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
    _label.backgroundColor = [UIColor yellowColor];
    _label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label];
    
    //1.初始化对象
    _p1 = [[Person alloc] init];
    
    //2.添加观察者对象
    //参数1：监听的对象
    //参数2：当前对象
    //参数3：新值和旧值
    //参数4：形参内容
    [_p1 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:@"hello"];
}

- (void)changeValue
{
    //3.通过kvc改修对象属性的值
    NSString *name = [NSString stringWithFormat:@"%d",arc4random() % 100000];
    [_p1 setValue:name forKey:@"name"];
}

//4.对象属性值修改时回调(没写程序会奔溃)
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    //keyPath属性名字
    if ([keyPath isEqualToString:@"name"]) {
        
        //object被监听的对象 person的对象
        Person *p1 = (Person *)object;
        _label.text = p1.name;
    }
    
    //change新值 和 旧值
    //context 形参值
    NSLog(@"keyPath == %@",keyPath);
    NSLog(@"object == %@",object);
    NSLog(@"change == %@",change);
    NSLog(@"context == %@",context);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
