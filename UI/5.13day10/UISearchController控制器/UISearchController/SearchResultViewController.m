//
//  SearchResultViewController.m
//  UISearchController
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "SearchResultViewController.h"
#import "Person.h"

@interface SearchResultViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SearchResultViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.resultArrM = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //导航控制器中有两个滚动视图以上的时候，只会优化第一个
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.resultArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *signCell = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:signCell];
    }
    
    Person *p1  = self.resultArrM[indexPath.row];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
