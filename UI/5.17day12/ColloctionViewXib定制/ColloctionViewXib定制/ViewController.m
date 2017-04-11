//
//  ViewController.m
//  ColloctionViewXib定制
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"
#import "CustomCell.h"
#import "CustomHeadView.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,PassButtonTag>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@property (nonatomic,strong) NSMutableArray *dataArrM;

@property (nonatomic,strong) NSMutableArray *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //注册xib cell
    [self.myCollectionView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellWithReuseIdentifier:@"CustomCell"];
    
    //注册xib cell段头
    [self.myCollectionView registerNib:[UINib nibWithNibName:@"CustomHeadView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"];
    
    _titleArr = [NSMutableArray arrayWithObjects:@"70年代的咖啡",@"80年代的雪碧",@"90年代的拉菲", nil];
}

- (NSMutableArray *)dataArrM
{
    if (_dataArrM == nil) {
        
        _dataArrM = [NSMutableArray array];
        
        for(int i = 0; i < 10 ; i++)
        {
            Photo *p1 = [[Photo alloc] init];
            
            p1.name = [NSString stringWithFormat:@"第%d张图片",i + 1];
            
            p1.photoName = [NSString stringWithFormat:@"%d.jpg",i + 1];
        
            [_dataArrM addObject:p1];
        }
    }
    return _dataArrM;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return _titleArr.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArrM.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    Photo *p1 = self.dataArrM[indexPath.row];
    
    cell.imgView.image = [UIImage imageNamed:p1.photoName];
    
    cell.nameLabel.text = p1.name;
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader])
    {
        //复用
        CustomHeadView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head" forIndexPath:indexPath];
        
        //取到数据源
        [headView.titleButton setTitle:_titleArr[indexPath.section] forState:UIControlStateNormal];
        
        headView.delegate = self;
        
        //实现
#if 0
        [headView setBlock:^(NSInteger index) {
            [_titleArr removeObjectAtIndex:index];
            
            [self.myCollectionView reloadData];
        }];
#endif
        
        headView.titleButton.tag = 100 + indexPath.section;
        
        return headView;
    }
    return nil;
}

- (void)passButtonTag:(NSInteger)index{
    
    [_titleArr removeObjectAtIndex:index];
    
    [self.myCollectionView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
