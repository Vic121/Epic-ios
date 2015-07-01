//
//  ItemCell.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell {
@private
    Item *_item;
    __weak UIImageView *_AuthorAvatar;
    __weak UILabel *_Author;
    __weak UIImageView *_LikeIcon;
    __weak UILabel *_LikeCount;
    __weak UIImageView *_CommentIcon;
    __weak UILabel *_CommentCount;
    __weak UIImageView *_ServiceIcon;
    __weak UILabel *_Date;
}

@synthesize AuthorAvatar = _AuthorAvatar;
@synthesize Author = _Author;
@synthesize LikeIcon = _LikeIcon;
@synthesize LikeCount = _LikeCount;
@synthesize CommentIcon = _CommentIcon;
@synthesize CommentCount = _CommentCount;
@synthesize ServiceIcon = _ServiceIcon;
@synthesize Date = _Date;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)prepareForReuse {
    [self.CommentCount setText:@"0"];
    [self.LikeCount setText:@"0"];
    [self.Author setText:@""];
    [self.Date setText:@"now"];
}

- (void)setContent:(Item *)item {
    [self.CommentCount setText:[NSString stringWithFormat:@"%d", item.comments]];
    [self.LikeCount setText:[NSString stringWithFormat:@"%d", item.points]];
    [self.Author setText:item.author];
    // TODO: format date
    [self.Date setText:[NSString stringWithFormat:@"%@", item.contentCreatedAt]];
}

- (UITextView *)applyToTextView:(UITextView *)textView HTML:(NSString *)htmlString
{
//    NSString *htmlString = @"<h1>Header</h1><h2>Subheader</h2><p>Some <em>text</em></p><img src='http://blogs.babble.com/famecrawler/files/2010/11/mickey_mouse-1097.jpg' width=70 height=100 />";
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    textView.attributedText = attributedString;
    
    
    return textView;
}

@end
