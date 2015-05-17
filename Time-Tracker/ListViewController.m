//
//  ListViewController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"
#import "ListTableViewDataSource.h"
#import "ProjectController.h"

@interface ListViewController () <UITableViewDelegate>

@property (strong, nonatomic) ListTableViewDataSource *listDataSource;
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ListViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.listDataSource = [ListTableViewDataSource new];
        self.tableView.dataSource = self.listDataSource;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Project *project = [ProjectController sharedInstance].projectsArray[indexPath.row];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
