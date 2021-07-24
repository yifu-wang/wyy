
//
//  VCMy.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "ViewControllerMy.h"
#import "ViewController.h"
#import "ViewControllerFind.h"
#import "ViewControllerVideo.h"
#import "ViewControllerFriend.h"
#import"ViewControllerUse.h"
#import "a.h"
#import "ViewControlleryun.h"
#import "UITableViewCellMy.h"
static NSString *identifying = @"标识";
@interface VCMy ()

@end

@implementation VCMy
- (void)viewDidLoad {
    [super viewDidLoad];
//    UIBarButtonItem* a2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:nil];
//
//    self.navigationItem.leftBarButtonItem = a2;
    
    UIBarButtonItem* a2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressright)];
    self.navigationItem.rightBarButtonItem = a2;
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:103];
   tabBarItem.image = [[UIImage imageNamed:@"我的.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
   tabBarItem.selectedImage = [[UIImage imageNamed:@"我的2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.badgeValue = @"1";
    self.tabBarItem = tabBarItem;
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.translucent = YES;
    
//
//    UIImage* imageMy = [UIImage imageNamed:@"我的.png"];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    

    
//    UINavigationBar* navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
//    navBar.barTintColor = [UIColor whiteColor];
//    UINavigationItem* navItem = [[UINavigationItem alloc] init];
//    UIBarButtonItem* btnleft = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressDown)];
//    self.navigationItem.leftBarButtonItem = btnleft;
//    [navItem setLeftBarButtonItem:btnleft animated:false];
    
    
    
//        _scrollView.frame = CGRectMake(0, 750, 500, 100);
//        _scrollView.pagingEnabled = YES;
//        _scrollView.scrollEnabled = YES;
//        _scrollView.contentSize = CGSizeMake(140*5, 100);
//        _scrollView.bounces = YES;
//        //sv.alwaysBounceHorizontal = YES;
//        //sv.alwaysBounceVertical = YES;
//        _scrollView.showsHorizontalScrollIndicator = YES;
//        _scrollView.showsVerticalScrollIndicator = YES;
//        _scrollView.backgroundColor = [UIColor yellowColor];
//        [_buttonFirst setImage:[[UIImage imageNamed:@"1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//        _buttonFirst.frame = CGRectMake(0, 0, 100, 100);
//        [_scrollView addSubview:_buttonFirst];
//
//        [_buttonSecond setImage:[[UIImage imageNamed:@"2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//        _buttonSecond.frame = CGRectMake(110, 0, 100, 100);
//        [_scrollView addSubview:_buttonSecond];
//
//        [_buttonThird setImage:[[UIImage imageNamed:@"3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//        _buttonThird.frame = CGRectMake(220, 0, 100, 100);
//        [_scrollView addSubview:_buttonThird];
//
//
//        [_buttonThurth setImage:[[UIImage imageNamed:@"4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//        _buttonThurth.frame = CGRectMake(350, 0, 100, 100);
//        [_scrollView addSubview:_buttonThurth];
//
//
//        [_buttonFifth setImage:[[UIImage imageNamed:@"5.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//        _buttonFifth.frame = CGRectMake(470, 0, 100, 100);
//        [_scrollView addSubview:_buttonFifth];
//
//        [_tableView addSubview:_scrollView];
//
      
    _arrayData = [[NSMutableArray alloc] init];

    NSArray* array01 = [NSArray arrayWithObjects:@"",nil];
        NSArray* array02 = [NSArray arrayWithObjects:@"我的音乐",@"", nil];
        NSArray* array03 = [NSArray arrayWithObjects:@"最近播放",@"", nil];
        NSArray* array04 = [NSArray arrayWithObjects:@"创建歌单     收藏歌单     歌单助手",@"", nil];

         [_arrayData addObject:array01];
         [_arrayData addObject:array02];
         [_arrayData addObject:array03];
         [_arrayData addObject:array04];
        
    UIButton* buttonMy = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonMy setImage:[[UIImage imageNamed:@"本地音乐.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    buttonMy.titleLabel.text = @"本地音乐";
    buttonMy.titleLabel.font = [UIFont systemFontOfSize:15];
    buttonMy.frame = CGRectMake(40, 140, 32, 32);
    [_tableView addSubview:buttonMy];
    
    UILabel* lableFirst = [[UILabel alloc] init];
    lableFirst.text = @"本地音乐";
    lableFirst.frame = CGRectMake(20, 170, 80, 40);
    [_tableView addSubview:lableFirst];
    lableFirst.font = [UIFont systemFontOfSize:17];
    
    UIButton* buttonZj = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonZj setImage:[[UIImage imageNamed:@"最近播放.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    buttonZj.titleLabel.text = @"最近播放";
    buttonZj.titleLabel.font = [UIFont systemFontOfSize:15];
    buttonZj.frame = CGRectMake(120, 140, 32, 32);
    [_tableView addSubview: buttonZj];
    
    UILabel* lableSecond = [[UILabel alloc] init];
    lableSecond.text = @"最近播放";
    lableSecond.frame = CGRectMake(105, 170, 80, 40);
    [_tableView addSubview:lableSecond];
    lableSecond.font = [UIFont systemFontOfSize:17];
    
    UIButton* buttonSc = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonSc setImage:[[UIImage imageNamed:@"我的收藏.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    buttonSc.titleLabel.text = @"我的收藏";
    buttonSc.titleLabel.font = [UIFont systemFontOfSize:15];
    buttonSc.frame = CGRectMake(210, 140, 32, 32);
    [_tableView addSubview:buttonSc];
    
    UILabel* lableThird = [[UILabel alloc] init];
    lableThird.text = @"我的收藏";
    lableThird.frame = CGRectMake(190, 170, 80, 40);
    [_tableView addSubview:lableThird];
    lableThird.font = [UIFont systemFontOfSize:17];
    
    UIButton* buttonDt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonDt setImage:[[UIImage imageNamed:@"我的电台.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    buttonDt.titleLabel.text = @"我的电台";
    buttonDt.titleLabel.font = [UIFont systemFontOfSize:15];
    buttonDt.frame = CGRectMake(293, 140, 32, 32);
    [_tableView addSubview:buttonDt];
    
    UILabel* lableFourth = [[UILabel alloc] init];
    lableFourth.text = @"我的电台";
    lableFourth.frame = CGRectMake(275, 170, 80, 40);
    [_tableView addSubview:lableFourth];
    
    lableFourth.font = [UIFont systemFontOfSize:17];
    
    UIButton* buttonTx = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonTx setImage:[[UIImage imageNamed:@"头像.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    buttonTx.titleLabel.text = @"头像";
    buttonTx.titleLabel.font = [UIFont systemFontOfSize:10];
    buttonTx.frame = CGRectMake(10,20,90,90);
    [_tableView addSubview:buttonTx];
    
    UILabel* labelFifth = [[UILabel alloc]init];
    labelFifth.text = @"Yep";
    labelFifth.frame = CGRectMake(120, 20, 80, 40);
    [_tableView addSubview:labelFifth];
    labelFifth.font = [UIFont systemFontOfSize:25];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
       _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    UILabel* labelSixth = [[UILabel alloc]init];
    labelSixth.text = @"LV.17";
    labelSixth.frame = CGRectMake(142, 50, 80, 40);
    [_tableView addSubview:labelSixth];
    labelSixth.font = [UIFont systemFontOfSize:15];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    _sv = [[UIScrollView alloc] init];
    _sv.frame = CGRectMake(0, 0, 500, 100);

    _sv.pagingEnabled = YES;
    _sv.scrollEnabled = YES;
    _sv.contentSize = CGSizeMake(140*5, 100);
    _sv.bounces = YES;
    //sv.alwaysBounceHorizontal = YES;
    //sv.alwaysBounceVertical = YES;
    _sv.showsHorizontalScrollIndicator = YES;
    _sv.showsVerticalScrollIndicator = YES;
    _sv.backgroundColor = [UIColor clearColor];
    
    UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy1 setImage:[[UIImage imageNamed:@"1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy1.frame = CGRectMake(0, 0, 100, 100);
    [_sv addSubview:btnMy1];

    UIButton* _btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnMy2 setImage:[[UIImage imageNamed:@"2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btnMy2.frame = CGRectMake(110, 0, 100, 100);
    [_sv addSubview:_btnMy2];

    UIButton* btnMy3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy3 setImage:[[UIImage imageNamed:@"3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy3.frame = CGRectMake(220, 0, 100, 100);
    [_sv addSubview:btnMy3];

    UIButton* btnMy4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy4 setImage:[[UIImage imageNamed:@"4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy4.frame = CGRectMake(350, 0, 100, 100);
    [_sv addSubview:btnMy4];

    UIButton* btnMy5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy5 setImage:[[UIImage imageNamed:@"5.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy5.frame = CGRectMake(470, 0, 100, 100);
    [_sv addSubview:btnMy5];
    
        
    _btnMyFirst = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnMyFirst setImage:[[UIImage imageNamed:@"my1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btnMyFirst.titleLabel.font = [UIFont systemFontOfSize:10];
//    _btnMyFirst.frame = CGRectMake(0, 0, 400, 180);
    
    _btnMySecond = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnMySecond setImage:[[UIImage imageNamed:@"my2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btnMySecond.titleLabel.font = [UIFont systemFontOfSize:10];
//    _btnMySecond.frame = CGRectMake(0, 0, 400, 220);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     NSInteger numRow = [[_arrayData objectAtIndex:section]count];
    return numRow;
 }

 //设置数据视图的组数
 -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//     return 5;
     return _arrayData.count;
 }
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0  ){
        return 200;
    }
    if((indexPath.section == 1) && (indexPath.row == 1))
    return 200;
    if((indexPath.section == 2) && (indexPath.row == 1))
    return 220;
    if((indexPath.section == 3) && (indexPath.row == 1))
    return 100;
    return 45;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"abc"];
        if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
        }
    cell.textLabel.textColor = [UIColor blackColor];
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryNone;
//    [cell.contentView addSubview:nil];
        if(indexPath.section == 1 ){
            if(indexPath.row == 0){
                
            } else {
                _btnMyFirst.frame = CGRectMake(0, 0, 390, 200);
                [cell.contentView addSubview:_btnMyFirst];
            }
    }
    if (indexPath.section == 2){
        if(indexPath.row == 0){
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else{
            _btnMySecond.frame = CGRectMake(0, 0, 390, 220);
            [cell.contentView addSubview:_btnMySecond];
        }
    }
   if (indexPath.section == 3){
         if(indexPath.row == 0){
             cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         }else{
             [cell.contentView addSubview:_sv];
   }
   }
    
     return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}

-(void)pressright{
    ViewControlleryun* yun = [[ViewControlleryun alloc] init];
    [self.navigationController pushViewController:yun animated:YES];
    
}

@end
//
//    _scrollView.frame = CGRectMake(0, 750, 500, 100);
//    _scrollView.pagingEnabled = YES;
//    _scrollView.scrollEnabled = YES;
//    _scrollView.contentSize = CGSizeMake(140*5, 100);
//    _scrollView.bounces = YES;
//    //sv.alwaysBounceHorizontal = YES;
//    //sv.alwaysBounceVertical = YES;
//    _scrollView.showsHorizontalScrollIndicator = YES;
//    _scrollView.showsVerticalScrollIndicator = YES;
//    _scrollView.backgroundColor = [UIColor yellowColor];
//
//    [_buttonFirst setImage:[[UIImage imageNamed:@"1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    _buttonFirst.frame = CGRectMake(0, 0, 100, 100);
//    [_scrollView addSubview:_buttonFirst];
//
//    [_buttonSecond setImage:[[UIImage imageNamed:@"2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    _buttonSecond.frame = CGRectMake(110, 0, 100, 100);
//    [_scrollView addSubview:_buttonSecond];
//
//    [_buttonThird setImage:[[UIImage imageNamed:@"3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    _buttonThird.frame = CGRectMake(220, 0, 100, 100);
//    [_scrollView addSubview:_buttonThird];
//
//
//    [_buttonThurth setImage:[[UIImage imageNamed:@"4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    _buttonThurth.frame = CGRectMake(350, 0, 100, 100);
//    [_scrollView addSubview:_buttonThurth];
//
//
//    [_buttonFifth setImage:[[UIImage imageNamed:@"5.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    _buttonFifth.frame = CGRectMake(470, 0, 100, 100);
//    [_scrollView addSubview:_buttonFifth];
//
//    }

