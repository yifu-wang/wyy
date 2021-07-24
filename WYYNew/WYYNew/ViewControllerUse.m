//
//  VCUse.m
//  WYY
//
//  Created by Yep on 2021/7/21.
//

#import "ViewControllerUse.h"
#import "ViewControllerCell.h"
@interface VCUse ()

@end

@implementation VCUse

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:nil tag:105];
    tabBarItem.image = [[UIImage imageNamed:@"账号.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    self.tabBarItem = tabBarItem;
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    

    UIButton* btnSc = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnSc setImage:[[UIImage imageNamed:@"商城.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnSc.titleLabel.text = @"商城";
    btnSc.titleLabel.font = [UIFont systemFontOfSize:10];
    btnSc.frame = CGRectMake(30,145 , 50, 50);
    [_tableView addSubview:btnSc];

    UILabel* label2 = [[UILabel alloc]init];
    label2.text = @"商城";
    label2.frame = CGRectMake(40, 190, 80, 40);
    [_tableView addSubview:label2];
    label2.font = [UIFont systemFontOfSize:15];

    UIButton* btnMyNews = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMyNews setImage:[[UIImage imageNamed:@"消息.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMyNews.titleLabel.text = @"消息";
    btnMyNews.titleLabel.font = [UIFont systemFontOfSize:10];
    btnMyNews.frame = CGRectMake(120, 145, 50, 50);
    [_tableView addSubview:btnMyNews];

    UILabel* label1 = [[UILabel alloc]init];
    label1.text = @"消息";
    label1.frame = CGRectMake(130, 190, 80, 40);
    [_tableView addSubview:label1];
    label1.font = [UIFont systemFontOfSize:15];

    UIButton* btnYc = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnYc setImage:[[UIImage imageNamed:@"演出.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnYc.titleLabel.text = @"演出";
    btnYc.titleLabel.font = [UIFont systemFontOfSize:10];
    btnYc.frame = CGRectMake(210,145 , 50, 50);
    [_tableView addSubview:btnYc];

    UILabel* label3 = [[UILabel alloc]init];
    label3.text = @"演出";
    label3.frame = CGRectMake(220, 188, 80, 40);
    [_tableView addSubview:label3];
    label3.font = [UIFont systemFontOfSize:15];

    UIButton* btnHf = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnHf setImage:[[UIImage imageNamed:@"个性换肤.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnHf.titleLabel.text = @"个性换肤";
    btnHf.titleLabel.font = [UIFont systemFontOfSize:15];
    btnHf.frame = CGRectMake(273,150, 120, 40);
    [_tableView addSubview:btnHf];

    UILabel* label4 = [[UILabel alloc]init];
    label4.text = @"个性换肤";
    label4.frame = CGRectMake(290, 186, 90, 40);
    [_tableView addSubview:label4];
    label4.font = [UIFont systemFontOfSize:15];

    UIButton* btntouxiang = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btntouxiang setImage:[[UIImage imageNamed:@"头像.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btntouxiang.titleLabel.text = @"头像";
    btntouxiang.titleLabel.font = [UIFont systemFontOfSize:10];
    btntouxiang.frame = CGRectMake(10,0,90,90);
    [_tableView addSubview:btntouxiang];

    UILabel* label5 = [[UILabel alloc]init];
    label5.text = @"Yep";
    label5.frame = CGRectMake(120, 0, 80, 40);
    [_tableView addSubview:label5];
    label5.font = [UIFont systemFontOfSize:25];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _arrayData = [[NSMutableArray alloc] init];
    NSArray* array1 = [NSArray arrayWithObjects:@"", nil];
    NSArray* array2 = [NSArray arrayWithObjects:@"创作者中心", nil];
    NSArray* array3 = [NSArray arrayWithObjects:@"音乐服务",@"口袋铃声",@"我的订单", nil];
    NSArray* array4 = [NSArray arrayWithObjects:@"小工具",@"设置", @"夜间模式", @"定时关闭", nil];
    NSArray* array5 = [NSArray arrayWithObjects:@"更多",@"在线听歌免流量",@"优惠券",@"加入网易云音乐人",@"我要直播",@"分享网易云音乐",nil];
    NSArray* array6 = [NSArray arrayWithObjects:@"退出登录", nil];

    [_arrayData addObject:array1];
    [_arrayData addObject:array2];
    [_arrayData addObject:array3];
    [_arrayData addObject:array4];
    [_arrayData addObject:array5];
    [_arrayData addObject:array6];
    _Switch = [[UISwitch alloc] init];
    _Switch.on = NO;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     NSInteger numRow = [[_arrayData objectAtIndex:section]count];
    return numRow;
 }

 -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
     return _arrayData.count;
 }

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
    cell.textLabel.textColor = [UIColor blackColor];
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryNone;
    UIImage* image1 = [UIImage imageNamed:@""];
    cell.imageView.image = image1;
    if(indexPath.section == 1){
        UIImage* image = [UIImage imageNamed:@"1.png"];
        cell.imageView.image = image;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    }
    
    if ((indexPath.section == 2)&&(indexPath.row != 0)) {
        
            NSString* str = [NSString stringWithFormat:@"%ld.png",indexPath.row % 3+ 1];
            UIImage* image2 = [UIImage imageNamed:str];
            cell.imageView.image = image2;
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
               
        }
    if ((indexPath.section == 3) && (indexPath.row != 0)){
        if (indexPath.row == 2)
        {
            _Switch.frame = CGRectMake(290, 10, 80, 40);
            [cell.contentView addSubview:_Switch];
        }
        NSString* str1 = [NSString stringWithFormat:@"%ld.png",indexPath.row % 4+3];
        UIImage* image3 = [UIImage imageNamed:str1];
        cell.imageView.image = image3;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
        if ((indexPath.section == 4)&& (indexPath.row != 0)){
               NSString* str2 = [NSString stringWithFormat:@"%ld.png",indexPath.row % 10+6 ];
                     UIImage* image4 = [UIImage imageNamed:str2];
                     cell.imageView.image = image4;
                           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           }
           if(indexPath.section == 5){
               cell.textLabel.textColor = [UIColor redColor];
               cell.textLabel.textAlignment = NSTextAlignmentCenter;
           }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0  ){
        return 200;
    }
    return 45;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [[UIView alloc]init];
}


@end
