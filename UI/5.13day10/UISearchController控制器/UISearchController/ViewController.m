//
//  ViewController.m
//  UISearchController
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SearchResultViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UISearchResultsUpdating>
{
    UITableView *_tableView;
    NSMutableArray *_dataArrM; //数据源
    UISearchController *_searchVC; //搜索控制器
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createTableView];
    
    [self createSearchController];
    
    [self loadData];
}

- (void)createTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}

- (void)createSearchController
{
    //参数代表搜索结果哪个控制器显示
    SearchResultViewController *searchResultVC = [[SearchResultViewController alloc] init];
    
    //nil 当前视图控制器显示
    _searchVC = [[UISearchController alloc] initWithSearchResultsController:searchResultVC];
    
    //视图控制器不会默认下移64
    searchResultVC.automaticallyAdjustsScrollViewInsets = NO;
    
    //是否在搜索的时候使底色变暗
    _searchVC.dimsBackgroundDuringPresentation = NO;
    
    //适配搜索栏 自适应
    [_searchVC.searchBar sizeToFit];
    
    //设置提示文字
    _searchVC.searchBar.placeholder = @"请输入关键词";
    
    //设置代理
    //搜索结束时候调用
//    _searchVC.delegate = self;
    
    //点击搜索时调用
    _searchVC.searchResultsUpdater  = self;
    
    //设置颜色
    _searchVC.searchBar.barTintColor = [UIColor orangeColor];
    
    _tableView.tableHeaderView = _searchVC.searchBar;
}

- (void)loadData
{
    _dataArrM = [NSMutableArray array];
    
    for(int i = 0; i < 10; i++)
    {
        Person *p1 = [[Person alloc] init];
        
        if (i % 2 == 0) {
            p1.name = [NSString stringWithFormat:@"好友%d",i];
        }else
        {
            p1.name = [NSString stringWithFormat:@"闺蜜%d",i];
        }
        
        p1.imgName = [NSString stringWithFormat:@"21_%d.jpg",i+1];
        
        [_dataArrM addObject:p1];
    }
    
}

#pragma mark --- UISearchControllerDelegate

//点击搜索输入都会触发
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    
    NSLog(@"%s",__FUNCTION__);
    //1.得到搜索结果的控制器
    SearchResultViewController *resultVC = (SearchResultViewController *)searchController.searchResultsController;

    //4.清空搜索数组
    [resultVC.resultArrM removeAllObjects];
    
    //2.去数据源中查找关键字
    for(Person *p1 in _dataArrM)
    {
        if ([p1.name rangeOfString:_searchVC.searchBar.text].location != NSNotFound)
        {
            [resultVC.resultArrM addObject:p1];
        }
    }
    
    //3.刷新tabbleView
    [resultVC.tableView reloadData];
}

#pragma mark --- UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArrM.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *signCell = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:signCell];
    }
    
    Person *p1  = _dataArrM[indexPath.row];
    
    cell.textLabel.text = p1.name;
    
    cell.imageView.image = [UIImage imageNamed:p1.imgName];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
