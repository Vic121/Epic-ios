//
//  TitleWithDescriptionCell.m
//  EpicGlue
//
//  Created by Marek on 21/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "TitleWithDescriptionCell.h"

@implementation TitleWithDescriptionCell

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//
//    }
//    return self;
//}

- (UIView *)getContent
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 200)];
    
    NSLog(@"%@--%@", self.model.title, self.model.desc);
    
    UITextView *title = [[UITextView alloc] initWithFrame:CGRectMake(0, 10, WIDTH, 100)];
    title.text = self.model.title;
    
    [view addSubview:title];
    //    [view bringSubviewToFront:title];
    
    UITextView *desc = [[UITextView alloc] initWithFrame:CGRectMake(0, 100, WIDTH, 100)];
    desc.text = self.model.desc;
    
    [view addSubview:desc];
    //    [view bringSubviewToFront:desc];
    
    [view setBackgroundColor:[UIColor magentaColor]];
    return view;
}

@end
