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

@interface ItemCollectionViewController ()

@end

@implementation ItemCollectionViewController

@synthesize itemListManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[TitleCell class] forCellWithReuseIdentifier:@"title_cell"];
    [self.collectionView registerClass:[TitleWithDescriptionCell class] forCellWithReuseIdentifier:@"title_with_description_cell"];
    [self.collectionView registerClass:[ImageCell class] forCellWithReuseIdentifier:@"image_cell"];
    [self.collectionView registerClass:[ImageWithTitleCell class] forCellWithReuseIdentifier:@"image_with_title_cell"];

    itemListManager = [ItemListManager instance];
//    [itemManager fetchItems:^{
//        [self.collectionView reloadData];
//
//        NSLog(@"collection reloaded");
//        NSLog(@"%d", itemListManager.items.count);
//    } onFailure:^ {
//
//    }];
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

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (ItemCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    ItemModel *model = [itemManager.items objectAtIndex:indexPath.item];
    
//    NSLog(@"%@", model.mediaType);
    
//    ItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:model.mediaType forIndexPath:indexPath];
//    NSLog(@"%@ for %d", model, indexPath.item);
//    cell.model = model;
//    [cell.contentView addSubview:[cell getContent]];
    
//    [cell.contentView addSubview:[cell getHeader]];
//    [cell.contentView addSubview:[cell getContent]];
//    [cell.contentView addSubview:[cell getFooter]];
    
    return nil;
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
