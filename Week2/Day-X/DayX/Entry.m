//
//  Entry.m
//  DayX
//
//  Created by Ai Mecham on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

//static NSString * const titleKey = @"title";
//static NSString * const bodyKey = @"bodyText";
//static NSString * const timestampKey = @"timestamp";

static NSString * const EntryClassName = @"Entry";


@implementation Entry

@dynamic title;
@dynamic text;
@dynamic timestamp;



////this is making a dictionary
//- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
//    self = [super init];
//    
//    if (self) {
//        self.title = dictionary[titleKey];
//        self.bodyText = dictionary[bodyKey];
//        self.timestamp = dictionary[timestampKey];
//    }
//    
//    return self;
//}
//
////this is making it an object
//- (NSDictionary *)dictionaryRepresentation {
//    
//    NSDictionary *dictionary = @{titleKey: self.title,
//                                 bodyKey: self.bodyText,
//                                 timestampKey: self.timestamp};
//    
//    return dictionary;
//}

+ (NSString *)parseClassName {
    return EntryClassName;
}


@end









