//
//  ViewController.m
//  xib自定义View
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)  CustomView *custom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _custom = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:0][0];
    
    _custom.layer.cornerRadius = 10.0;
  
    _custom.clipsToBounds = YES;
    
    _custom.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
    _custom.hidden = YES;
    
    self.hiddView.hidden = YES;
    
    __weak typeof(self) safeSelf = self;
    
    [_custom setBlock:^(NSInteger index) {
        
        if (index == 100) {
            
           safeSelf.custom.hidden = YES;
            
            safeSelf.hiddView.hidden = YES;
        }
        
    }];
    
    [self.view addSubview:_custom];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _custom.hidden = NO;
    
    self.hiddView.hidden = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
