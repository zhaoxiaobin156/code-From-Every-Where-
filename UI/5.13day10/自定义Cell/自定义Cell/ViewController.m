//
//  ViewController.m
//  自定义Cell
//
//  Created by 刘桂林 on 16/5/13.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "CustomCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
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
    
    [self.view addSubview:_tableView];
}

- (void)loadData
{
    _dataArrM = [NSMutableArray array];
    
    NSArray *arr = @[@"摄氏度好",@"大口大口叫撒快轮到看",@"sladjsdkjajkld",@"圣诞节就撒了肯定就是受打击了",@"啥的刻录机按揭贷款垃圾啊得考虑"];
    
    for(int i = 0; i < 5; i++)
    {
        Person *p1 = [[Person alloc] init];
        
        if (i % 2 == 0) {
            p1.name = [NSString stringWithFormat:@"好友%d",i];
        }else
        {
            p1.name = [NSString stringWithFormat:@"闺蜜%d",i];
        }
        p1.speakStr = arr[i];
        
        p1.imgName = [NSString stringWithFormat:@"21_%d.jpg",i+1];
        
        [_dataArrM addObject:p1];
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *signCell = @"cell";
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:signCell];
    
    if (cell == nil) {
        
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:signCell];
    }
    
    //MVC 设计模式
    //M : model 存储数据
    //V : view  看的见的视图
    //C : viewController 视图控制器
    Person *p1 = _dataArrM[indexPath.row];
    
    [cell setPerson:p1];
    
#if 0
    
    Person *p1 = _dataArrM[indexPath.row];
    
    cell.imgView.image = [UIImage imageNamed:p1.imgName];
    
    cell.speakLabel.text = p1.speakStr;
    
    cell.nameLabel.text = p1.name;
    
#endif
    
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
