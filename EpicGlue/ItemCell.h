//
//  ItemCell.h
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Item.h"

#define WIDTH 400

@interface ItemCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *AuthorAvatar;
@property (weak, nonatomic) IBOutlet UILabel *Author;
@property (weak, nonatomic) IBOutlet UIImageView *LikeIcon;
@property (weak, nonatomic) IBOutlet UILabel *LikeCount;
@property (weak, nonatomic) IBOutlet UIImageView *CommentIcon;
@property (weak, nonatomic) IBOutlet UILabel *CommentCount;
@property (weak, nonatomic) IBOutlet UIImageView *ServiceIcon;
@property (weak, nonatomic) IBOutlet UILabel *Date;

- (void)setContent:(Item *)item;
- (UITextView *)applyToTextView:(UITextView *)textView HTML:(NSString *)htmlString;

@end