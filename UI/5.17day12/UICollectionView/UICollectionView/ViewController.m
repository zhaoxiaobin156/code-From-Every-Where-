//
//  ViewController.m
//  UICollectionView
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "Photo.h"
#import "CustomCell.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong) NSMutableArray *dataArrM;

@property (nonatomic,strong) UICollectionView *collectonView;

@end



@implementation ViewController

- (NSMutableArray *)dataArrM
{
    if (_dataArrM == nil) {
        
        _dataArrM = [NSMutableArray array];
        
        NSInteger count = 0;
        
        for(int i = 0; i < 4; i++)
        {
            Group *group = [[Group alloc] init];
            
            group.groupName = [NSString stringWithFormat:@"第%d组",i+1];
            
            for(int j = 0; j < 10; j++)
            {
                Photo *p1 = [[Photo alloc] init];
                
                p1.photoName = [NSString stringWithFormat:@"%ld.jpg",count+1];
                
                p1.name = [NSString stringWithFormat:@"第%ld张图片",count+1];
                
                count ++ ;
                
                [group.photoArrM addObject:p1];
            }
            [_dataArrM addObject:group];
        }
    }
    return _dataArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    //设置cell的偏移量
    layout.sectionInset = UIEdgeInsetsMake(100, 10, 10, 10);
    
    //设置cell之间的上下边距
    layout.minimumLineSpacing = 10;
    
    //设置cell之间的左右边距
    layout.minimumInteritemSpacing = 10;
    
    //设置collectionView滚动方向
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    //设置cell的大小 itemSize代表cell的大小
    layout.itemSize = CGSizeMake(110, 150);
    
    _collectonView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    
    _collectonView.backgroundColor = [UIColor whiteColor];
    
    //外观
    _collectonView.delegate = self;
    
    //数据源
    _collectonView.dataSource = self;
    
    _collectonView.showsVerticalScrollIndicator = NO;
    
    //注册手写cell
    [_collectonView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"cell"];
    
    //手写注册cell段头
    [_collectonView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"];
    
    //手写注册cell段尾
    [_collectonView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"foot"];
    
    [self.view addSubview:_collectonView];
}

#pragma mark --- UICollectionViewDelegate

//设置段个数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.dataArrM.count;
}

//设置每一段cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    Group *group = self.dataArrM[section];
    
    return group.photoArrM.count;
}

//设置cell
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    Group *group = self.dataArrM[indexPath.section];
    
    Photo *p1 = group.photoArrM[indexPath.row];
    
    cell.imgView.image = [UIImage imageNamed:p1.photoName];
    
    cell.nameLabel.text = p1.name;
    
    return cell;
}

//设置cell的偏移量
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//{
//    //上 左 下 右 控制cell的位置
//    return UIEdgeInsetsMake(10, 12, 10, 12);
//}

//返回cell的大小
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(110, 150);
//}

//返回段头高度
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(375, 25);
}

//返回段头
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader])
    {
        UICollectionReusableView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head" forIndexPath:indexPath];
        
        Group *group = self.dataArrM[indexPath.section];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 375, 25)];
        
        label.textAlignment  = NSTextAlignmentCenter;
        
        label.text = group.groupName;
        
        label.backgroundColor = [UIColor orangeColor];
        
        label.tag = 100 + indexPath.section;
        
        [headView addSubview:label];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(delete:)];
        
        label.userInteractionEnabled = YES;
        
        [label addGestureRecognizer:tap];
        
        return headView;
    }else
    {
        
    }
    
    return nil;
}

- (void)delete:(UITapGestureRecognizer *)tap
{
    [self.dataArrM removeObjectAtIndex:tap.view.tag - 100];
    
    [_collectonView reloadData];
}

//点击cell触发
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    Group *group = self.dataArrM[indexPath.section];
    
    Photo *p1 = group.photoArrM[indexPath.row];
    
    //传图片名字
    NSLog(@"点击了%@",p1.name);
}

//是否允许点击cell
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        if (indexPath.row == 1) {
            return NO;
        }
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
