//
//  DetailViewController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import <MessageUI/MessageUI.h>
#import "DetailDataSource.h"
#import "ProjectController.h"


@interface DetailViewController () <UITableViewDelegate, UITextFieldDelegate, MFMailComposeViewControllerDelegate>

@property (strong, nonatomic) DetailDataSource *detailTableDataSource;

@end

@implementation DetailViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.detailTableDataSource = [DetailDataSource new];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.entriesTable.dataSource = self.detailTableDataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.project.title = textField.text;
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addButtonTapped:(id)sender {
}

- (IBAction)clockInButtonTapped:(id)sender {
    
}

- (IBAction)clockOutButtonTapped:(id)sender {
}

- (IBAction)sendReportButtonTapped:(id)sender {
}
@end
