//
//  Project.m
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Project.h"

static NSString * const titleKey = @"title";
static NSString * const entriesKey = @"entries";

@implementation Project

- (id) initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _title = dictionary[titleKey];
        
        NSMutableArray *entriesArray = [NSMutableArray new];
        for (NSDictionary *entry in dictionary[entriesKey]) {
            [entriesArray addObject:[[Entry alloc] initWithDictionary:entry]];
        }
        
    };
    
    return self;
}

- (NSDictionary *)convertProjectToDictionary {
    
    NSMutableDictionary *projectDictionary = [NSMutableDictionary new];
    if (self.title) {
        [projectDictionary setObject:self.title forKey:titleKey];
    }
    
    NSMutableArray *entries = [NSMutableArray new];
    for (Entry *entry in self.entries) {
        [entries addObject:[entry convertEntryToDictionary]];
    }
    [projectDictionary setObject:entries forKey:entriesKey];
    
    return projectDictionary;
}

- (void) addEntry:(Entry *)entry {
    if (!entry) {
        return;
    }
    
    NSMutableArray *entryAdditionArray = self.entries.mutableCopy;
    [entryAdditionArray addObject:entry];
    
    self.entries = entryAdditionArray;
}

- (void) removeEntry:(Entry *)entry {
    if (!entry) {
        return;
    }
    
    NSMutableArray *entryRemovalArray = self.entries.mutableCopy;
    [entryRemovalArray removeObject:entry];
    
    self.entries = entryRemovalArray;
}

@end
