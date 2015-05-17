//
//  Project.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Project.h"
#import "Entry.h"
#import "ProjectController.h"

@interface Project ()

@property (strong, nonatomic) NSArray *entriesArray;

@end

@implementation Project


- (void)addEntrytoProject:(Entry *)entry {
    
    if (!entry) {
        return;
    }
    
    NSMutableArray *addEntryArray = [[NSMutableArray alloc] initWithArray:self.entriesArray.mutableCopy];
    [addEntryArray addObject:entry];
    
    self.entriesArray = addEntryArray;
    
}

- (void)removeEntryFromProject:(Entry *)entry {
    
    if (!entry) {
        return;
    }
    
    NSMutableArray *removeEntryArray = [[NSMutableArray alloc] initWithArray:self.entriesArray.mutableCopy];
    [removeEntryArray removeObject:entry];
    
    self.entriesArray = removeEntryArray;
    
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        tit
    }
    
}

- (NSDictionary *)convertProjectToDictionary {
    
    NSMutableDictionary
    return dictionary;
}


@end
