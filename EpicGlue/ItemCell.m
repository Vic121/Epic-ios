//
//  ItemCell.m
//  EpicGlue
//
//  Created by Marek on 14/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

//@synthesize model;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:[self getHeader]];
        [self addSubview:[self getContent]];
        [self addSubview:[self getFooter]];
    }
    return self;
}

- (UIView *)getHeader
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEAD_HEIGHT)];
    
//    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEAD_HEIGHT)];
//    [author setText:self.model.author];
//    [author setTextColor:[UIColor purpleColor]];
//    [view addSubview:author];
    
    [view setBackgroundColor:[UIColor greenColor]];
    
    return view;
}

- (UIView *)getContent
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 200)];
    
    [view setBackgroundColor:[UIColor yellowColor]];
    
    return view;
}

- (UIView *)getFooter
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, FOOT_HEIGHT)];
    
//    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, WIDTH, FOOT_HEIGHT)];
//    [author setText:self.model.author];
//    [author setTextColor:[UIColor purpleColor]];
//    [view addSubview:author];
    
    [view setBackgroundColor:[UIColor blueColor]];
    
    return view;
}

- (UITextView *)applyToTextView:(UITextView *)textView HTML:(NSString *)htmlString
{
//    NSString *htmlString = @"<h1>Header</h1><h2>Subheader</h2><p>Some <em>text</em></p><img src='http://blogs.babble.com/famecrawler/files/2010/11/mickey_mouse-1097.jpg' width=70 height=100 />";
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    textView.attributedText = attributedString;
    
    
    return textView;
}

@end
