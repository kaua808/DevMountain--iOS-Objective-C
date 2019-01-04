//
//  EntryController.m
//  DayX
//
//  Created by Ai Mecham on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"


//static NSString * const allEntries = @"allEntries";

@interface EntryController()
//@property (strong, nonatomic) NSArray *entries;

@end


@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        [sharedInstance loadEntriesFromParse];
    });
 
    return sharedInstance;

}

- (void)loadEntriesFromParse {
    
    PFQuery *query = [Entry query];
    
    // Without notifications to update the tableview we'll need to restart the app to get the tableview to load
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (Entry *entry in objects) {
            [entry pin];
        }
    }];
}

- (NSArray *)entries {
    
    PFQuery *query = [Entry query];
    [query fromLocalDatastore];
    return [query findObjects];
    
}

- (void)addEntryWithTitle:(NSString *)title text:(NSString *)text date:(NSDate *)date {
    
    Entry *entry = [Entry object];
    
    entry.title = title;
    entry.text = text;
    entry.timestamp = date;
    
    [entry pinInBackground];
    [entry save];
    
}

- (void)removeEntry:(Entry *)entry {
    
    [entry unpinInBackground];
    [entry deleteInBackground];
}

- (void)updateEntry:(Entry *)entry {
    
    [entry pinInBackground];
    [entry save];
    
}

//- (Entry *)createEntryWithTitle: (NSString *)title bodyText: (NSString *)bodyText {
//    Entry *entry = [Entry new];
//    entry.title = title;
//    entry.bodyText = bodyText;
//    entry.timestamp = [NSDate date];
//    
//    [self addEntry:entry];
//    
//    return entry;
//}

//- (void)addEntry: (Entry *)entry {
//    if (!entry) {
//        return;
//    }
//    
//    NSMutableArray *mutableEntries = self.entries.mutableCopy;
//    [mutableEntries addObject:entry];
//    
//    self.entries = mutableEntries;
//    [self saveToPersistStorage];
//    
//    
//}

//- (void)saveToPersistStorage {
//    NSMutableArray *dictionaryEntries = [NSMutableArray new];
//    
//    for (Entry *entry in self.entries) {
//        [dictionaryEntries addObject:[entry dictionaryRepresentation]];
//    }
//    
//    [[NSUserDefaults standardUserDefaults] setObject:dictionaryEntries forKey:allEntries];
//    [[NSUserDefaults standardUserDefaults] synchronize];
//    
//}

//- (void)loadFromPersistantStorage {
//    NSArray *dictionaryEntries = [[NSUserDefaults standardUserDefaults] objectForKey:allEntries];
//    
////    self.entries = dictionaryEntries;
//    
//    NSMutableArray *mutableEntryArray = [NSMutableArray new];
//    for (NSDictionary *entry in dictionaryEntries) {
//        [mutableEntryArray addObject:[[Entry alloc] initWithDictionary:entry]];
//    }
//    
//    self.entries = mutableEntryArray;
//    
//}

//- (void)save {
//    [self saveToPersistStorage];
//}

//- (void)removeEntry: (Entry *)entry {
//    
//    if (!entry) {
//        return;
//    }
//    
//    NSMutableArray *mutableEntries = self.entries.mutableCopy;
//    [mutableEntries removeObject:entry];
//    
//    self.entries = mutableEntries;
//    [self saveToPersistStorage];
//    
//}






@end
