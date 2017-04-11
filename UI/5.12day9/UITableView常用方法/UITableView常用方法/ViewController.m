//
//  ViewController.m
//  UITableView常用方法
//
//  Created by 刘桂林 on 16/5/12.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dataArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //编辑按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(editing:)];

    //滚动按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    button.tintColor = [UIColor redColor];
    
    button.frame = CGRectMake(0, 0, 50, 30);
    
    [button setTitle:@"滚到底部" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(goBottom) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = button;

    //刷新tabbleView
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"刷新" style:UIBarButtonItemStylePlain target:self action:@selector(refresh)];
    
    //创建tableview
    [self createTableView];
    
    //加载数据源
    [self loadData];
}

- (void)createTableView
{
    //tableView在导航控制器中会自动调整frame，自动下移64，即它的frame可以设置为CGRectMake(0, 0, WIDTH, HEIGHT)
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}

- (void)loadData
{
    _dataArr = [NSMutableArray arrayWithObjects:@"北京",@"上海",@"广州",@"深圳",@"大连",@"郑州",@"成都",@"长沙",@"重庆",@"武汉",@"新加坡", nil];
}

//编辑状态
- (void)editing:(UIBarButtonItem *)item
{
    _tableView.editing = !_tableView.editing;
    if (_tableView.editing) {
        item.title = @"Done";
    }else
    {
        item.title = @"Edit";
    }
}

- (void)goBottom
{
    //数组的长度减去1 代表最后一个元素 也代表tabbleView中最后一行
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:_dataArr.count - 1 inSection:0];
    
    //滚到指定行
    [_tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}

- (void)refresh
{
    [_tableView reloadData];
}

#pragma mark --- UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *signCell = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:signCell];
    }
    
    //系统自带的按钮样式
//    UITableViewCellAccessoryNone
//    UITableViewCellAccessoryDisclosureIndicator
//    UITableViewCellAccessoryDetailDisclosureButton
//    UITableViewCellAccessoryCheckmark
//    UITableViewCellAccessoryDetailButton
    
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    
    cell.textLabel.text = _dataArr[indexPath.row];
    
    return cell;
}

//设置cell行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

//选中指定行（cell）
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController *second = [[SecondViewController alloc] init];
    
    second.name = _dataArr[indexPath.row];
    
    [self.navigationController pushViewController:second animated:YES];
}

#pragma mark --- option可选择函数

//处理信息按钮的事件(以下两种按钮才会触发)
//UITableViewCellAccessoryDetailDisclosureButton
//UITableViewCellAccessoryDetailButton
- (void)tableView:(UITableView *)tableView
accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"您的余额已不足请及时充值" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [alert show];
}

//定制删除按钮
//- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return @"删除";
//}

//指定行编辑
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.row == 0) {
//        return NO;
//    }
//    return YES;
//}

//滑动后变为编辑模式(只能删除)
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}

//删除/插入
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        //1.先删除数据源中的元素
        [_dataArr removeObjectAtIndex:indexPath.row];
        
        //2.处理UI界面
        [_tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }else
    {
        //1.先插入到数据源中
        [_dataArr insertObject:@"南极" atIndex:indexPath.row];
        
        //2.处理UI界面
        [_tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//设置编辑模式(删除或者增加)
//- (UITableViewCellEditingStyle )tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return UITableViewCellEditingStyleInsert;
//}

//移动cell
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    //对数据源中的元素交换位置
    //sourceIndexPath 要交换的元素
    //destinationIndexPath 目标元素
    
//    [_dataArr exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
    
    id obj = _dataArr[sourceIndexPath.row];
    
    [_dataArr removeObjectAtIndex:sourceIndexPath.row];
    
    [_dataArr insertObject:obj atIndex:destinationIndexPath.row];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
