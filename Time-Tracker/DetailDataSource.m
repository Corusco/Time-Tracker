//
//  DetailDataSource.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailDataSource.h"

@implementation DetailDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellID"];
    }
    
    Entry *entry = [self.project entriesArray][indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", entry.startTime, entry.endTime];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.project.entriesArray count];
}

@end
