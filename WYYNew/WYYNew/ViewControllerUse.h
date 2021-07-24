//
//  VCUse.h
//  WYYNew
//
//  Created by Yep on 2021/7/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCUse : UIViewController
<UITableViewDelegate,
UITableViewDataSource
>
 
@property(nonatomic , strong)UISwitch* Switch;
@property(nonatomic , strong)UITableView* tableView;
@property(nonatomic , strong)NSMutableArray* arrayData;
@property(nonatomic , strong)NSString* strImage;
@property(nonatomic , strong)UIImageView* imageView;
@end

NS_ASSUME_NONNULL_END
