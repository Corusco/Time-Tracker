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

static NSString * const titleKey = @"title";
static NSString * const entriesKey = @"entries";

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
        _title = dictionary[titleKey];
        
        NSMutableArray *entries = [NSMutableArray new];
        for (NSDictionary *entry in dictionary[entriesKey]) {
            [entries addObject:[[Entry alloc] initWithDictionary:entry]];
        }
        
        _entriesArray = entries;
        }
    return self;
}
    


- (NSDictionary *)convertProjectToDictionary {
    
    NSMutableDictionary *projectDicitionary = [NSMutableDictionary new];
    if (self.title) {
        [projectDicitionary setObject:self forKey:titleKey];
    }
    NSMutableArray *entriesInProject = [NSMutableArray new];
    for (Entry *entry in self.entriesArray) {
        [entriesInProject addObject:[entry convertEntryToDictionary]];
    }
    return projectDicitionary;
}


@end
