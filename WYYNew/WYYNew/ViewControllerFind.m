//
//  VCFind.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "ViewControllerFind.h"

@interface VCFind ()

@end

@implementation VCFind

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:nil tag:101];
    tabBarItem.image = [[UIImage imageNamed:@"发现.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"发现2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.badgeValue = @"17";
    self.tabBarItem = tabBarItem;
}

@end
