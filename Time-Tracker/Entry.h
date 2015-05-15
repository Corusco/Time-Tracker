//
//  Entry.h
//  Time-Tracker
//
//  Created by Justin Huntington on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (id) initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)convertEntryToDictionary;

@end
