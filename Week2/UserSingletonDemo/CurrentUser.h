//
//  CurrentUser.h
//  UserSingletonDemo
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentUser : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *emailAddress;
@property (strong, nonatomic) NSString *favoriteColor;

+ (instancetype)sharedInstance;

@end
