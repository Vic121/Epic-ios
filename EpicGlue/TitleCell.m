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
    UILabel *_title;
}

@synthesize title = _title;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (UIView *)getContent
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 200)];
    
//    NSLog(@"%@--%@", self.model.title, self.model.desc);
    
    self.title = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 100)];

    [view addSubview:self.title];
    [view bringSubviewToFront:self.title];
    
    [view setBackgroundColor:[UIColor magentaColor]];
    return view;
}

@end
