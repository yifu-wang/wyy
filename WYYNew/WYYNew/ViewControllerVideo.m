//
//  VCVideo.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "ViewControllerVideo.h"

@interface VCVideo ()

@end

@implementation VCVideo

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:nil tag:102];
    tabBarItem.image = [[UIImage imageNamed:@"视频.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"视频2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.badgeValue = @"17";
    self.tabBarItem = tabBarItem;
}


@end

