//
//  ItemCollectionViewController.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemCollectionViewController.h"

#import "TitleCell.h"
#import "TitleWithDescriptionCell.h"
#import "ImageCell.h"
#import "ImageWithTitleCell.h"
#import "ItemListManager.h"
#import "VideoCell.h"
#import "VideoWithTitleCell.h"
#import "DataSource.h"
#import "ItemList.h"

NSString * const NewItemsNotification = @"NewItemsNotification";

@interface ItemCollectionViewController ()

@end

@implementation ItemCollectionViewController

@synthesize itemListManager;

#pragma mark ItemListManager

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.collectionView.delegate = self;
//    self.collectionView.dataSource = self;
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[TitleCell class] forCellWithReuseIdentifier:@"cell_with_title"];
//    [self.collectionView registerClass:[TitleWithDescriptionCell class] forCellWithReuseIdentifier:@"cell_with_title_and_description"];
//    [self.collectionView registerClass:[ImageCell class] forCellWithReuseIdentifier:@"cell_with_image"];
//    [self.collectionView registerClass:[ImageWithTitleCell class] forCellWithReuseIdentifier:@"cell_with_image_and_title"];
//    [self.collectionView registerClass:[VideoCell class] forCellWithReuseIdentifier:@"cell_with_video"];
//    [self.collectionView registerClass:[VideoWithTitleCell class] forCellWithReuseIdentifier:@"cell_with_video_and_title"];
    UINib *nib = [UINib nibWithNibName:@"XCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"cell_with_title"];

    [[NSNotificationCenter defaultCenter] addObserverForName:NewItemsNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *notification)
    {
        NSLog(@"items=%d", [self.itemListManager.dataSource.itemList count]);
        [self.collectionView reloadData];
    }];

    self.itemListManager = [ItemListManager initWithDataSource:[DataSource instance]];
    [self.itemListManager.dataSource fetch];
}

- (void)viewWillDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NewItemsNotification object:nil];
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.itemListManager.dataSource itemsCount];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (ItemCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Item *model = [self.itemListManager.dataSource itemAtIndex:indexPath.item];

    NSLog(@"%@", [model getCellIdentifier]);

    TitleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell_with_title" forIndexPath:indexPath];
    [cell setContent:model];

    NSLog(@"%@ for %ld (%@)", cell.Title.text, (long)indexPath.item, model.title);

    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    ItemModel *model = [itemManager.items objectAtIndex:indexPath.item];
    
    return CGSizeMake(self.view.frame.size.width, 200);
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
