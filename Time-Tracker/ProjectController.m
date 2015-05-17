//
//  ProjectController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ProjectController.h"

@interface ProjectController ()

@property (strong, nonatomic) NSArray *projectsArray;

@end

@implementation ProjectController

+ (instancetype)sharedInstance
{
    static ProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ProjectController alloc] init];
    });
                 
    return sharedInstance;
}

- (void) addProject:(Project *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *addProjectArray = [[NSMutableArray alloc] initWithArray:self.projectsArray];
    [addProjectArray addObject:project];
    
    self.projectsArray = addProjectArray;
}


- (void) removeProject:(Project *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *removeProjectArray = [[NSMutableArray alloc] initWithArray:self.projectsArray];
    [removeProjectArray removeObject:project];
    
    self.projectsArray = removeProjectArray;
}


@end
