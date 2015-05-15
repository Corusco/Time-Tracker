//
//  ListViewController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController () <UITableViewDelegate>

@end

@implementation ListViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.dataSource = [ListTableViewDataSource new]; //added as part of step 2.4
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;//added as part of 2.7.
    self.tableView.dataSource = self.dataSource; //added as part of 2.7 to assign source for data to be here


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
