//
//  UITableViewCellMy.m
//  WYYNew
//
//  Created by Yep on 2021/7/23.
//

#import "UITableViewCellMy.h"

@implementation UITableViewCellMy

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"yep"]) {

       
            _scrollView.frame = CGRectMake(0, 750, 500, 100);
            _scrollView.pagingEnabled = YES;
            _scrollView.scrollEnabled = YES;
            _scrollView.contentSize = CGSizeMake(140*5, 100);
            _scrollView.bounces = YES;
            //sv.alwaysBounceHorizontal = YES;
            //sv.alwaysBounceVertical = YES;
            _scrollView.showsHorizontalScrollIndicator = YES;
            _scrollView.showsVerticalScrollIndicator = YES;
            _scrollView.backgroundColor = [UIColor yellowColor];
        
            [_buttonFirst setImage:[[UIImage imageNamed:@"1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            _buttonFirst.frame = CGRectMake(0, 0, 100, 100);
            [_scrollView addSubview:_buttonFirst];
        
            [_buttonSecond setImage:[[UIImage imageNamed:@"2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            _buttonSecond.frame = CGRectMake(110, 0, 100, 100);
            [_scrollView addSubview:_buttonSecond];
        
            [_buttonThird setImage:[[UIImage imageNamed:@"3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            _buttonThird.frame = CGRectMake(220, 0, 100, 100);
            [_scrollView addSubview:_buttonThird];
        
        
            [_buttonThurth setImage:[[UIImage imageNamed:@"4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            _buttonThurth.frame = CGRectMake(350, 0, 100, 100);
            [_scrollView addSubview:_buttonThurth];
        
        
            [_buttonFifth setImage:[[UIImage imageNamed:@"5.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            _buttonFifth.frame = CGRectMake(470, 0, 100, 100);
            [_scrollView addSubview:_buttonFifth];
        [self.contentView addSubview:_scrollView];
        
    }
    return self;
}

//布局
//- (void)layoutSubviews {
//    _btn.frame = CGRectMake(100, 10, 50, 50);
//}
@end
