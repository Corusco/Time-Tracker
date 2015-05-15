//
//  ProjectController.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface ProjectController : NSObject

@property (nonatomic, readonly) NSArray *projects;

+ (instancetype)sharedInstance;

- (void)addProject:(Project *)project;
- (void)removeProject:(Project *)projects;
- (void) synchronizeToDefaults;



@end
