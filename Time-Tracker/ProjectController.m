//
//  ProjectController.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ProjectController.h"
#import "Project.h"

static NSString * const projectListKey = @"projectList";

@interface ProjectController ()

@property (nonatomic) NSArray *projects;

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


- (void)addProject:(Project *)project{
    
    if (!project) {
        return;
    }
    
    NSMutableArray *addToProjectArray = self.projects.mutableCopy;
    [addToProjectArray addObject:project];
    
    self.projects = addToProjectArray;
    
}


- (void)removeProject:(Project *)project{
    
    if (!project) {
        return;
    }
    
    NSMutableArray *removeFromProjectArray = self.projects.mutableCopy;
    [removeFromProjectArray removeObject:project];
    
    self.projects = removeFromProjectArray;
    
}

- (void) loadFromUserDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:projectListKey];
    
    NSMutableArray *projects = [NSMutableArray new];
    for (NSDictionary *project in projectDictionaries) {
        [projects addObject:[[Project alloc] initWithDictionary:project]];
    }
    
    self.projects = projects;
}

- (void) synchronizeToDefaults {
    NSMutableArray *syncArray = [NSMutableArray new];
    for (Project *projectToSync in self.projects) {
        [syncArray addObject:[projectToSync convertProjectToDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:syncArray forKey:projectListKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
