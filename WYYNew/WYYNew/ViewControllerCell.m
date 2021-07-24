//
//  ViewControllerCell.m
//  WYYNew
//
//  Created by Yep on 2021/7/23.
//

#import "ViewControllerCell.h"


@implementation ViewControllerCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"abc"]) {
        
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_btn];
        
    }
    return self;
}

//布局
- (void)layoutSubviews {
    _label.frame = CGRectMake(30, 10, 100, 50);
    _btn.frame = CGRectMake(100, 10, 50, 50);
}

@end
