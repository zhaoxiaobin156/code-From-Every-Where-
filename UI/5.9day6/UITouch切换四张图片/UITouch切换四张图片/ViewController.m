//
//  ViewController.m
//  UITouch切换四张图片
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imgView;
    NSInteger _count;
    CGPoint _beiginPoint;
    CGPoint _endPoint;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    _imgView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imgView];
    
    _count = 1;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    _beiginPoint = [touch locationInView:self.view];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    _endPoint = [touch locationInView:self.view];
    
    [self compare];
}

- (void)compare
{
    //右滑
    if (_beiginPoint.x - _endPoint.x > 0) {
        _count ++;
        if (_count == 5) {
            _count = 1;
        }
        _imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
    }
    
    //左滑
    else if(_beiginPoint.x - _endPoint.x < 0)
    {
        _count --;
        if (_count == 0) {
            _count = 4;
        }
        _imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
