//
//  ViewController.m
//  UITableView练习
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

//创建一个表格视图.cell有图片.textLabel上显示当前组和当前行.偶数行背景颜色为绿色,奇数行背景颜色为红色

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_dataArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    tableView.delegate = self;
    
    tableView.dataSource = self;
    
//    _dataArr = @[@"德玛",@"奥巴马",@"卡特琳娜",@"皇子",@"剑圣"];
    
    [self.view addSubview:tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
    
//    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld段,第%ld行",indexPath.section,indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"001"];
    
    if (indexPath.row %2 == 0) {
        
        cell.contentView.backgroundColor = [UIColor greenColor];
    }else
    {
        cell.contentView.backgroundColor = [UIColor redColor];
    }

//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 100, 0, 100, 100)];
//    
//    label.text = _dataArr[indexPath.row];
//    
//    [cell.contentView addSubview:label];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
