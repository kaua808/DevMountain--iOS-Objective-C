//
//  ProjectController.m
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ProjectController.h"
static NSString * const projectListKey = @"projectList";

@interface ProjectController();

@property (nonatomic, strong) NSArray *projects;

@end

@implementation ProjectController

+ (ProjectController *)sharedInstance {
    static ProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ProjectController new];
        
        [sharedInstance loadFromDefaults];
    });
    return sharedInstance;
}

- (void)setProjects:(NSArray *)projects {
    self.projects = projects;
    
    [self synchronize];
}


//Create a mutable array using projects array
//add project to that array
//set the projects array property to that array
- (void)addProject:(Project *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *mutableProject = [[NSMutableArray alloc] initWithArray:self.projects];
    [mutableProject addObject:project];
    
    self.projects = mutableProject;
}

//Create a mutable array using projects array
//remove project from that array
//set the projects array property to that array
- (void)removeProject:(Project *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *mutableProject = self.projects.mutableCopy;
    [mutableProject removeObject:project];
    
    self.projects = mutableProject;
    
}

//load the projectDictionary from NSUserDefaults
- (void)loadFromDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:projectListKey];
    
    NSMutableArray *projects = [NSMutableArray new];
    for (NSDictionary *project in projectDictionaries) {
        [projects addObject:[[Project alloc] initWithDictionary:project]];
    }
    
    self.projects = projects;
    
}

//synchornize the projectDictionary into NSUserDefaults
- (void)synchronize {
    
    NSMutableArray *projectDictionaries = [NSMutableArray new];
    for (Project *project in self.projects) {
        [projectDictionaries addObject:[project projectDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:projectDictionaries forKey:projectListKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


@end
