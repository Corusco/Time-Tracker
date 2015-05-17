//
//  ListTableViewDataSource.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "ProjectController.h"
#import "Project.h"

static NSString *cellID = @"cellID";


@implementation ListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[ProjectController sharedInstance].projectsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    Project *project = [ProjectController sharedInstance].projectsArray[indexPath.row];
    
    cell.textLabel.text = project.title;
    
    cell.detailTextLabel.text = project.title;
    
    return cell;
}

@end
