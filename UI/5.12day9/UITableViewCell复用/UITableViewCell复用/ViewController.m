//
//  ViewController.m
//  UITableViewCell复用
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_arr; //数据源的数组
    NSArray *_headArr; //段头数组
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createTableView];
    
    [self loadData];
}

- (void)createTableView
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, WIDTH, HEIGHT - 20) style:UITableViewStylePlain];
    
    tableView.delegate = self;
    
    tableView.dataSource = self;
    
    //设置索引栏背景颜色
//    tableView.sectionIndexBackgroundColor = [UIColor cyanColor];
    
    //设置索引栏文字颜色
    tableView.sectionIndexColor = [UIColor grayColor];
    
    [self.view addSubview:tableView];
}

- (void)loadData
{
    _arr = @[@[@"德玛",@"德邦",@"艾希"],@[@"若克",@"卡特",@"毒气哥",@"德莱文"],@[@"奥巴马",@"男枪",@"安妮"]];
    
    _headArr = @[@"德玛西亚",@"小学生阵营",@"大叔萝莉"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _arr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = _arr[section];
    return arr.count;
}

//如果滚动tableView都会触发这个方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //复用机制
    //1.创建了一个复用标识
    static NSString *signCell = @"cell";

    //每个tableView都会有一个复用机制，滚动tableView如果有cell滚出屏幕就会自动加入到tableView的队列中，遵循先进先出的原则
    
    //2.去tableView中取带有复用标识的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    //3.如果没有带复用标识的cell就重新创建(最多能看见多少个cell就只创建多少个cell)
    
    if (cell == nil) {
        
        //创建带有标识的cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:signCell];
        
        NSLog(@"创建cell中");
    }
    
    //tableview复用的优点：节省系统内存 优化系统程序
    
    NSArray *arr = _arr[indexPath.section];
    
    cell.textLabel.text = arr[indexPath.row];
    
    cell.contentView.backgroundColor = [UIColor cyanColor];
    
    return cell;
}

//设置cell的行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

//设置段头标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return _headArr[section];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    //索引和组数是相对应的，如果索引字符超过当前组数的字母点击是没有响应的
    NSMutableArray *arrM = [NSMutableArray array];
    
    for(int i = 'A'; i <= 'Z'; i++)
    {
        NSString *str = [NSString stringWithFormat:@"%c",i];
        
        [arrM addObject:str];
    }
    
    return arrM;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
