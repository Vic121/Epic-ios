//
//  TitleCell.m
//  EpicGlue
//
//  Created by Marek on 21/03/2015.
//  Copyright (c) 2015 Only Epic Apps. All rights reserved.
//

#import "TitleCell.h"

@implementation TitleCell

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
    
//    NSLog(@"%@--%@", self.model.title, self.model.desc);
    
    UITextView *title = [[UITextView alloc] initWithFrame:CGRectMake(0, 10, WIDTH, 100)];
//    title.text = self.model.title;
    
    [view addSubview:title];
    //    [view bringSubviewToFront:title];
    
    [view setBackgroundColor:[UIColor magentaColor]];
    return view;
}

@end
