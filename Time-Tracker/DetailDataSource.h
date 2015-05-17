//
//  DetailDataSource.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface DetailDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) Project *project;

@end
