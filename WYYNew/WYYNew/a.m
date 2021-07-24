//
//  a.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "a.h"

@implementation a

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame])
    {
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_button];
        
        self.label = [[UILabel alloc] init];
        [self addSubview:_label];
    }
    return self;
}
-(void)layoutSubviews{
    _button.frame = CGRectMake(31, 15, 32, 32);
    _label.frame = CGRectMake(0, 15, 94, 98);
    _label.font = [UIFont systemFontOfSize:15];
}



@end
