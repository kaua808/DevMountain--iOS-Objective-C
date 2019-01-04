//
//  Project.m
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Project.h"
static NSString * const titleKey = @"title";
static NSString * const entriesKey = @"entries";

@interface Project ()

@property (nonatomic, strong) Entry *currentEntry;

@end

@implementation Project


- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[titleKey];
        
        //Create an array and add all the entires for dictionary to the that array
        //set the mutable array to the entire property
        NSMutableArray *entries = [NSMutableArray new];
        for (NSDictionary *entry in dictionary[entriesKey]) {
            [entries addObject:[[Entry alloc] initWithDictionary:entry]];
        }
        
        self.entries = entries;
        
    }
    return self;
}


- (NSDictionary *)projectDictionary {
    
    NSMutableDictionary *projectDictionary = [NSMutableDictionary new];
    if (self.title) {
        [projectDictionary setObject:self.title forKey:titleKey];
    }
    
    NSMutableArray *entries = [NSMutableArray new];
    for (Entry *entry in self.entries) {
        [entries addObject:[entry entryDictionary]];
    }
    [projectDictionary setObject:entries forKey:entriesKey];
    
    return projectDictionary;
}

//Create a mutable array of entires
//add the object to that array and then set the entries property equal to the array
- (void)addEntry:(Entry *)entry {
    
    if (!entry) {
        return;
    }
    
    NSMutableArray *mutableEnries = [[NSMutableArray alloc] initWithArray:self.entries];
    [mutableEnries addObject:entry];
    
    self.entries = mutableEnries;
    
}

//Create a mutable array of entires
//remove the object to that array and then set the entries property equal to the array
- (void)removeEntry:(Entry *)entry {
    
    if (!entry) {
        return;
    }
    
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries removeObject:entry];
    
    self.entries = mutableEntries;
    
}

@end
