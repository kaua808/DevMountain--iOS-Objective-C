//
//  Entry.h
//  DayX
//
//  Created by Ai Mecham on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Entry : PFObject <PFSubclassing>


//@property (strong, nonatomic) NSString *title;
//@property (strong, nonatomic) NSString *bodyText;
//@property (strong, nonatomic) NSDate *timestamp;

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSDate * timestamp;

//- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
//- (NSDictionary *)dictionaryRepresentation;

+ (NSString *)parseClassName;
@end
