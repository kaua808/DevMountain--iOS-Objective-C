//
//  EntryController.m
//  DayX2
//
//  Created by Kaleo Kim on 5/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (strong, nonatomic) NSArray *entries;

@end

@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
    });
    return sharedInstance;
}

- (Entry *)createEntry:(NSString *)title bodyText:(NSString *)bodyText {
    
    Entry *entry = [Entry new];
    entry.title = title;
    entry.body = bodyText;
    entry.timestamp = [NSDate date];
    
    [self addEntry:entry];
    
    return entry;
}

- (void)addEntry:(Entry *)entry {
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries addObject:entry];
    
    self.entries = mutableEntries;
    
    
}

- (void)removeEntry:(Entry *)entry {
    NSMutableArray *removeEntryArray = self.entries.mutableCopy;
    [removeEntryArray removeObject:entry];
    
    self.entries = removeEntryArray;
}

//- (void)save {
//    [self s]
//}

@end
