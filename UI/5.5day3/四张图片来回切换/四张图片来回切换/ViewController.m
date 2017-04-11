//
//  ViewController.m
//  四张图片来回切换
//
//  Created by 刘桂林 on 16/5/5.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imgView;
    NSInteger _count; //计数图片
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    _imgView.image = [UIImage imageNamed:@"4.jpg"];
    
    //count记录图片的名字的前缀
    _count = 4;
    [self.view addSubview:_imgView];
    
    for(int i = 0; i < 2; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i * 110+100, self.view.frame.size.height - 60, 100, 50);
        if (i == 0) {
            [button setTitle:@"上一张" forState:UIControlStateNormal];
            [button addTarget:self action:@selector(preAction) forControlEvents:UIControlEventTouchUpInside];
        }else
        {
            [button setTitle:@"下一张" forState:UIControlStateNormal];
            [button addTarget:self action:@selector(nextAction) forControlEvents:UIControlEventTouchUpInside];
        }
        button.backgroundColor = [UIColor redColor];
        
        
        [self.view addSubview:button];
    }
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(nextAction) userInfo:nil repeats:YES];
}

//上一张
- (void)preAction
{
    _count --;
    //因为图片没有第0张，在count等于0的时候count置为4（显示最一张图片）
    if (_count == 0) {
        _count = 4;
    }
    _imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
}

//下一张
- (void)nextAction
{
    _count++;
    
    //因为图片没有第5张，在count等于5的时候count置为1（第一张图片）
    if (_count == 5) {
        _count = 1;
    }
    
    _imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
