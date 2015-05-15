//
//  DetailViewController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "ProjectController.h"

@interface DetailViewController () <UITableViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


- (IBAction)addNewTapped:(id)sender;
- (IBAction)checkInTapped:(id)sender;
- (IBAction)checkOutTapped:(id)sender;
- (IBAction)reportTapped:(id)sender;



@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    //self.project.title = textField.text;
    [[ProjectController sharedInstance] synchronizeToDefaults];
    
    return YES;
}


- (IBAction)addNewTapped:(id)sender {
}

- (IBAction)checkInTapped:(id)sender {
}

- (IBAction)checkOutTapped:(id)sender {
}

- (IBAction)reportTapped:(id)sender {
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
