//
//  ProjectController.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface ProjectController : NSObject

@property (strong, nonatomic, readonly) NSArray *projectsArray;

+ (instancetype)sharedInstance;

- (void) addProject:(Project *)project;
- (void) removeProject:(Project *)project;

@end
