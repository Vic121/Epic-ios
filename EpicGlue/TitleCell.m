//
//  TitleCell.m
//  EpicGlue
//
//  Created by Marek on 21/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "TitleCell.h"

@implementation TitleCell {
@private
    __weak UITextView *_Title;
}

@synthesize Title = _Title;

- (void)setContent:(Item *)item {
    [super setContent:item];

    [self.Title setText:item.title];
//    self.Title = [self applyToTextView:self.Title HTML:self.item.title];
}

@end
