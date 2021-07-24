//
//  VCFriend.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "ViewControllerFriend.h"

@interface VCFriend ()

@end

@implementation VCFriend

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"朋友" image:nil tag:104];
    tabBarItem.image = [[UIImage imageNamed:@"pengyou.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"pengyou2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.badgeValue = @"17";
    self.tabBarItem = tabBarItem;
}



@end
