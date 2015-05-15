//
//  Project.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"  //added as part of step 3.2. necessary to make methods work

@interface Project : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSArray *entries;

- (id)initWithDictionary:(NSDictionary *)dictionary;

- (void)addEntry:(Entry *)entry;

- (void)removeEntry:(Entry *)entry;

- (NSDictionary *)convertProjectToDictionary;

@end
