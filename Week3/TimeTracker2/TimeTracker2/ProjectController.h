//
//  ProjectController.h
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface ProjectController : NSObject

@property (nonatomic, strong, readonly) NSArray *projects;

+ (ProjectController *)sharedInstance;

- (void)addProject:(Project *)project;
- (void)removeProject:(Project *)project;

- (void)synchronize;


@end