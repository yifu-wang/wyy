//
//  SceneDelegate.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "SceneDelegate.h"
#import "ViewControllerFind.h"
#import "ViewControllerVideo.h"
#import "ViewControllerMy.h"
#import "ViewControllerFriend.h"
#import "ViewControllerUse.h"
#import "ViewControlleryun.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    self.window = [[UIWindow alloc] initWithWindowScene:scene];
    [_window makeKeyAndVisible];
    VCFind* vc1 = [[VCFind alloc] init];
    VCVideo* vc2 = [[VCVideo alloc] init];
    VCMy* vc3 = [[VCMy alloc] init];
    VCFriend* vc4 = [[VCFriend alloc] init];
    VCUse* vc5 = [[VCUse alloc] init];
    
    
    
    
    vc1.view.backgroundColor = [UIColor whiteColor];
    vc2.view.backgroundColor = [UIColor whiteColor];
    vc3.view.backgroundColor = [UIColor whiteColor];
    vc4.view.backgroundColor = [UIColor whiteColor];
    vc5.view.backgroundColor = [UIColor whiteColor];
//    NSArray* arrayVC = [NSArray arrayWithObjects:vc1,vc2,vc3,vc4,vc5, nil];
//    UITabBarController* tbc = [[UITabBarController alloc] init];
//    tbc.viewControllers = arrayVC;
//    self.window.rootViewController = tbc;
//    tbc.tabBar.barTintColor = [UIColor whiteColor];
//    tbc.tabBar.tintColor = [UIColor blueColor];
//    tbc.selectedIndex = 2;
//
    vc1.navigationItem.title = @"发现";
    vc2.title = @"视频";
    vc3.navigationItem.title = @"我的";
    vc4.title = @"朋友";
    vc5.title = @"账号";
    UIBarButtonItem* right = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"扫描.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem* a1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"列表.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem* a2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    vc3.navigationItem.leftBarButtonItem = a1;
    vc3.navigationItem.leftBarButtonItem.tintColor = [UIColor redColor];
    
    vc5.navigationItem.leftBarButtonItem = a1;
    vc5.navigationItem.rightBarButtonItem = right;
    vc1.navigationItem.leftBarButtonItem = a1;
    vc2.navigationItem.leftBarButtonItem = a1;
    vc3.navigationItem.leftBarButtonItem = a1;
//    vc3.navigationItem.rightBarButtonItem = a2;
    vc3.navigationItem.leftBarButtonItem.tintColor = [UIColor redColor];
    vc3.navigationItem.rightBarButtonItem.tintColor = [UIColor redColor];
    vc4.navigationItem.leftBarButtonItem = a1;
    
    UINavigationController* p1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    UINavigationController* p2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    UINavigationController* p3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    UINavigationController* p4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    UINavigationController* p5 = [[UINavigationController alloc] initWithRootViewController:vc5];
    
    NSArray* arrayVc = [NSArray arrayWithObjects:p1,p2,p3,p4,p5, nil];
    UITabBarController* tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = arrayVc;
    tabController.selectedIndex = 2;
    
    
        //   将分栏控制器作为根视图
        self.window.rootViewController = tabController;
    
             [self.window makeKeyAndVisible];
    
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}

-(void)pressright{
    ViewControlleryun* Vcyun = [[ViewControlleryun alloc] init];
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:Vcyun];
    [self.window addSubview:navController.view];
}


@end
