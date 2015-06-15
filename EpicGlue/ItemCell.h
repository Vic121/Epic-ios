//
//  ItemCell.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ItemModel.h"

#define WIDTH 400
#define HEAD_HEIGHT 50
#define FOOT_HEIGHT 50

@interface ItemCell : UICollectionViewCell

@property (nonatomic) ItemModel *model;

- (UIView *)getHeader;
- (UIView *)getContent;
- (UIView *)getFooter;

- (UITextView *)applyToTextView:(UITextView *)textView HTML:(NSString *)htmlString;

@end