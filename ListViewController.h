//
//  ListViewController.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListTableViewDataSource.h"

@interface ListViewController : UINavigationController

@property (strong, nonatomic) ListTableViewDataSource *dataSource; //added as part of step 2.3
@property (nonatomic) UITableView *tableView; //added as part of step 2.5
@end
