//
//  CurrentUser.m
//  UserSingletonDemo
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "CurrentUser.h"

@implementation CurrentUser

+ (instancetype)sharedInstance {
    static CurrentUser *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CurrentUser new];
    });
    return sharedInstance;
    
    
}
 


@end
