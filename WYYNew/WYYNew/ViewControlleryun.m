//
//  ViewControlleryun.m
//  WYYNew
//
//  Created by Yep on 2021/7/23.
//

#import "ViewControlleryun.h"
#import "ViewControllerMy.h"
@interface ViewControlleryun ()

@end

@implementation ViewControlleryun

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"云盘";
    
    UIImageView* image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2.jpg"]];
    image1.frame = CGRectMake(0,200, 400, 400);
    [self.view addSubview:image1];
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"左箭头.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressleft)];
    self.navigationItem.leftBarButtonItem = leftBtn;
}
-(void)pressleft
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
