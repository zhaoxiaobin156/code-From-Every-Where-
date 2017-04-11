//
//  ViewController.m
//  CollectionView
//
//  Created by 刘桂林 on 16/5/19.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "ItemModel.h"
#import "CustomCell.h"
#import "CustomHeadView.h"
#import "NextViewController.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UISearchControllerDelegate,UISearchResultsUpdating>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@property (nonatomic,strong) NSMutableArray *dataArrM; //行 数据源

@property (nonatomic,strong) NSMutableArray *titleArrM; //段 数据源

@property (nonatomic,strong) UISearchController *searchVC; //搜索控制器

@property (nonatomic,strong) NSMutableArray *searchArrM; //搜索数据源

@property (nonatomic,assign) BOOL isSearch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadData];
    
    [self createSearchVC];
}

- (void)loadData
{
    self.titleArrM = [NSMutableArray arrayWithObjects:@"70年代的拉菲",@"80年代的雪碧",@"90年代的二锅头", nil];
    
    self.dataArrM = [NSMutableArray array];
    
    for(int i = 0; i < 10; i++)
    {
        ItemModel *model = [[ItemModel alloc] init];
        
        model.price = [NSString stringWithFormat:@"价格：%d",arc4random() % 6300];
        
        model.imgName = [NSString stringWithFormat:@"%d.jpg",i+1];
        
        [self.dataArrM addObject:model];
    }
}

- (void)createSearchVC
{
    self.searchVC = [[UISearchController alloc] initWithSearchResultsController:nil];
    
    [self.searchVC.searchBar sizeToFit];
    
    self.searchVC.searchBar.placeholder = @"请输入关键字";
    
    self.searchVC.dimsBackgroundDuringPresentation = NO;
    
    self.searchVC.hidesNavigationBarDuringPresentation = NO;
    
    self.searchVC.delegate = self;
    
    self.searchVC.searchResultsUpdater = self;
    
    self.navigationItem.titleView = self.searchVC.searchBar;
    
    self.searchArrM = [NSMutableArray array];
}

#pragma mark --- UISearchControllerDelegate

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    self.isSearch = YES;
    
    for(ItemModel *model in self.dataArrM)
    {
        if ([model.price rangeOfString:self.searchVC.searchBar.text].location != NSNotFound)
        {
            [self.searchArrM addObject:model];
        }
    }
    
    [self.myCollectionView reloadData];
}

- (void)didDismissSearchController:(UISearchController *)searchController
{
    self.isSearch = NO;
    
    [self.searchArrM removeAllObjects];
    
    [self.myCollectionView reloadData];
}

#pragma mark --- UICollectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    if (self.isSearch) {
        
        return 1;
    }
    return self.titleArrM.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (self.isSearch) {
        
        return self.searchArrM.count;
    }
    return self.dataArrM.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    ItemModel *model;
    
    if (self.isSearch) {
        
        model = self.searchArrM[indexPath.row];
    }else
    {
        model = self.dataArrM[indexPath.row];
    }
    
    cell.imgView.image = [UIImage imageNamed:model.imgName];
    
    cell.priceLabel.text = model.price;
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        
        CustomHeadView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head" forIndexPath:indexPath];
        
        [headView.myButton setTitle:self.titleArrM[indexPath.section] forState:UIControlStateNormal];
        
        //按钮的tag标记了点击的段
        headView.myButton.tag = indexPath.section + 100;
        
        //点击删除 回调
        [headView setBlock:^(NSInteger index) {
            [self.titleArrM removeObjectAtIndex:index];
            
            [self.myCollectionView reloadData];
        }];
        
        return headView;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    if (self.isSearch) {
        
        return CGSizeMake(375, 0);
    }
    return CGSizeMake(375, 50);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    ItemModel *model;
    
    if (self.isSearch) {
        
        model = self.searchArrM[indexPath.row];
    }
    else
    {
        model = self.dataArrM[indexPath.row];
    }
    
    //视图控制器连线跳转
    [self performSegueWithIdentifier:@"next" sender:model];
}

//视图控制器跳转触发
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //获取目标控制器
    NextViewController *next = segue.destinationViewController;
    
    //赋值
    next.model = sender;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
