//
//  ViewController.m
//  KVC
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *p1 = [[Person alloc] init];
    p1.name = @"小明";
    NSLog(@"name == %@",p1.name);
    
    //kvc赋值对象的属性(每个对象都有kvc方法)
    [p1 setValue:@"小❀" forKey:@"name"];//value可以给nil
    
    NSString *name = [p1 valueForKey:@"name"];
    NSLog(@"name == %@",name);
    
    [p1 setValue:@"18" forKey:@"age"];
    NSString *age = [p1 valueForKey:@"age"];
    NSLog(@"age = %@",age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
