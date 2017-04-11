//
//  ViewController.m
//  QQ分组显示
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "Person.h"
#import "CustomCell.h"
#import "CustomHeadView.h"
#define Width self.view.frame.size.width

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dataArrM;
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
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    //设置行高
    _tableView.rowHeight = 150;
    
    [self.view addSubview:_tableView];
}

- (void)loadData
{
    _dataArrM = [[NSMutableArray alloc] init];
    
    NSArray *arr = @[@"小炮",@"虚空行者",@"狗头",@"风女",@"娘炮",@"阿木木",@"王子阿木木",@"猴子",@"安妮",@"皮城女警",@"艾希",@"LOL"];
    
    NSInteger count = 0;
    
    //三组
    for(int i = 0; i < 3; i++)
    {
        Group *group = [[Group alloc] init];

        group.groupName = [NSString stringWithFormat:@"第%d组",i];
        
        //每组四个人
        for(int j = 0; j < 4; j++)
        {
            Person *p1 = [[Person alloc] init];
            
            p1.name = arr[count];
            
            p1.imgName = [NSString stringWithFormat:@"21_%ld.jpg",count+1];
            
            p1.price = [NSString stringWithFormat:@"$:%d",arc4random() % 6300];
            
            count ++;
            
            [group.friendArrM addObject:p1];
        }
        
        [_dataArrM addObject:group];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataArrM.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    Group *group = _dataArrM[section];
    
    if (group.isHidden) {
        return 0;
    }
   
    return group.friendArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *signCell = @"cell";
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    if (cell == nil) {
        
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    }
    
    Group *group = _dataArrM[indexPath.section];
    
    Person *p1 = group.friendArrM[indexPath.row];
    
    [cell setPerson:p1];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 25;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    CustomHeadView *headView = [[CustomHeadView alloc] initWithFrame:CGRectMake(0, 0, Width, 25)];
    
    Group *group = _dataArrM[section];
    
    headView.groupName.text = group.groupName;
    
    headView.backgroundColor = [UIColor orangeColor];
    
    if (group.isHidden) {
        
        headView.tipImgView.image = [UIImage imageNamed:@"right@2x"];
    }
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cellHidden:)];
    
    //标记点击段
    headView.tag = 100 + section;
    
    [headView addGestureRecognizer:tap];
    
    return headView;
}

- (void)cellHidden:(UITapGestureRecognizer *)tap
{
    Group *group = _dataArrM[tap.view.tag - 100];
    
    group.isHidden = !group.isHidden;
    
    [_tableView reloadSections:[NSIndexSet indexSetWithIndex:tap.view.tag - 100] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
