//
//  ItemCollectionViewController.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ItemManager.h"

@interface ItemCollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic) ItemManager *itemManager;

@end
