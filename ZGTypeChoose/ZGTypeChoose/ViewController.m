//
//  ViewController.m
//  ZGTypeChoose
//
//  Created by Zong on 16/2/29.
//  Copyright © 2016年 Zong. All rights reserved.
//

#import "ViewController.h"
#import "SeaCollectionViewFlowLayout.h"
#import "ZGTypeCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) NSArray *titles;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SeaCollectionViewFlowLayout *collectionViewFlowLayout = [[SeaCollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(10, 100, 300, 200) collectionViewLayout:collectionViewFlowLayout];
    collectionView.backgroundColor = [UIColor yellowColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    
    [self.view addSubview:collectionView];
    
    [collectionView registerClass:[ZGTypeCollectionViewCell class] forCellWithReuseIdentifier:@"typeCollectionViewCell"];
    
    self.titles = @[@"中国",@"美国",@"加拿大",@"俄罗斯",@"菲律宾",@"德国",@"英国",@"日本",@"韩国",@"朝鲜",@"泰国",@"印度",];
}



#pragma mark - <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZGTypeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"typeCollectionViewCell" forIndexPath:indexPath];
    
    cell.titleLabel.text = self.titles[indexPath.item];
    [cell.titleLabel sizeToFit];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
