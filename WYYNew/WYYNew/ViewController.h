//
//  ViewController.h
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource,
UIBarPositioningDelegate
>
@property(nonatomic , strong)UITableView* tableView;

@end

