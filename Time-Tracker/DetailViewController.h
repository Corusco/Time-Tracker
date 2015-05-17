//
//  DetailViewController.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProjectController.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITableView *entriesTable;
@property (weak, nonatomic) IBOutlet UIToolbar *detailToolBar;
@property (strong, nonatomic) Project *project;

- (IBAction)addButtonTapped:(id)sender;
- (IBAction)clockInButtonTapped:(id)sender;
- (IBAction)clockOutButtonTapped:(id)sender;
- (IBAction)sendReportButtonTapped:(id)sender;

@end
