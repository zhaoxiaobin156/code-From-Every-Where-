//
//  ViewController.m
//  UITableView初认识
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //UITableView 继承于 UIScrollView
    //UITableViewStylePlain默认样式
    //UITableViewStyleGrouped 自动分段
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置代理
    
    //外观
    tableView.delegate = self;
    
    //数据
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
}

#pragma mark -- UITableViewDelegate

//设置段(默认是返回是1)
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//设置一段有多少行(必须要有的)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    return 10;
}

//设置cell(必须要有的)
//cell返回是根据段和行来确定
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //indexPath 有一个类别专门为UITableView服务的
    //indexPath 类别中有两个属性 section代表tabbleView的段 row代表tabbleView的行
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    //设置副标题
    cell.detailTextLabel.text = @"副标题";
    
    //设置图片
    cell.imageView.image = [UIImage imageNamed:@"001@2x"];
    
    //设置主标题
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld段,第%ld行",indexPath.section,indexPath.row];
    
    //cell上面还有一层视图 contentView和cell是一样大小
    cell.contentView.backgroundColor = [UIColor redColor];
    
    return cell;
}

//设置cell的行高 系统默认是44
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
