//
//  CurrentPerson.m
//  UserSingletonDemo
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "CurrentPerson.h"

@implementation CurrentPerson

    

+ (instancetype)currentUser {
    
    static CurrentPerson *currentUser = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        currentUser = [CurrentPerson new];
    });
    
    return currentUser;
    
}

@end