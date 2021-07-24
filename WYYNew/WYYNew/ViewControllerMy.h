//
//  VCMy.h
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCMy : UIViewController
<UITableViewDelegate,
UITableViewDataSource
>
@property(nonatomic , strong)UITableView* tableView;
@property(nonatomic , strong)NSMutableArray* arrayData;
@property(nonatomic , strong)UIScrollView* sv;
@property(nonatomic ,strong)UIButton* btnMyFirst;
@property(nonatomic ,strong)UIButton* btnMySecond;
@property(nonatomic , strong)UIButton* buttonFirst;
@property(nonatomic , strong)UIButton* buttonSecond;
@property(nonatomic , strong)UIButton* buttonThird;
@property(nonatomic , strong)UIButton* buttonThurth;
@property(nonatomic , strong)UIButton* buttonFifth;
//@property(nonatomic , strong)UITableView* tableView;
//@property(nonatomic , strong)MyTableViewCell* cell;
//@property(nonatomic , strong)UILabel* label;
@end
NS_ASSUME_NONNULL_END
