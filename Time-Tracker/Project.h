//
//  Project.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface Project : NSObject

@property (strong, nonatomic, readonly) NSArray *entriesArray;
@property (strong, nonatomic) NSString *title;

- (void)addEntrytoProject:(Entry *)entry;

- (void)removeEntryFromProject:(Entry *)entry;

- (id)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)convertProjectToDictionary;


@end
