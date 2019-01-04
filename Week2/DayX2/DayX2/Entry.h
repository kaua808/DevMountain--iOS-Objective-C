//
//  Entry.h
//  DayX2
//
//  Created by Kaleo Kim on 5/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *body;
@property (strong, nonatomic) NSDate *timestamp;

@end
