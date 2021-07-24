//
//  ViewController.m
//  WYYNew
//
//  Created by Yep on 2021/7/21.
//

#import "ViewController.h"
#import "ViewControllerMy.h"
#import "ViewControllerUse.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[VCUse class] forCellReuseIdentifier:@"0"];
    [self.tableView registerClass:[VCUse class] forCellReuseIdentifier:@"1"];
    [self.tableView registerClass:[VCUse class] forCellReuseIdentifier:@"2"];
    [self.tableView registerClass:[VCUse class] forCellReuseIdentifier:@"3"];
    [self.tableView registerClass:[VCUse class] forCellReuseIdentifier:@"4"];
    
}


@end
