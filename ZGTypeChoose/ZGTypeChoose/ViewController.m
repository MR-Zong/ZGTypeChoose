//
//  ViewController.m
//  ZGTypeChoose
//
//  Created by Zong on 16/2/29.
//  Copyright © 2016年 Zong. All rights reserved.
//

#import "ViewController.h"
#import "SeaCollectionViewFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SeaCollectionViewFlowLayout *collectionViewFlowLayout = [[SeaCollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(10, 100, 300, 300) collectionViewLayout:collectionViewFlowLayout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    
    [self.view addSubview:collectionView];
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"typeCollectionViewCell"];
    
}



#pragma mark - <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"typeCollectionViewCell" forIndexPath:indexPath];
    
    UILabel *typeLabel = [[UILabel alloc] init];
    typeLabel.text = @"中国";
    typeLabel.backgroundColor = [UIColor redColor];
    [typeLabel sizeToFit];
    [cell.contentView addSubview:typeLabel];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
