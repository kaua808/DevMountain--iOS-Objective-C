//
//  Entry.m
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Entry.h"
static NSString * const startTimeKey = @"startTime";
static NSString * const endTimeKey = @"endTime";

@implementation Entry


- (id)initWithDictionary:(NSDictionary *)dictionary {

    if (self) {
        
        self.startTime = dictionary[startTimeKey];
        self.endTime = dictionary[endTimeKey];
        
    }
    return self;
}


- (NSDictionary *)entryDictionary {
    
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    
    if (self.startTime) {
        [entryDictionary setObject:self.startTime forKey:startTimeKey];
    }
    if (self.endTime) {
        [entryDictionary setObject:self.endTime forKey:endTimeKey];
    }
    
    return entryDictionary;
}

@end
