//
//  AppResult.h
//  NSUrlSessionPlayground
//
//  Created by Kaleo Kim on 5/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface AppResult : NSObject

@property (strong, nonatomic) NSString *appName;
@property (strong, nonatomic) NSString *developer;
@property (strong, nonatomic) NSString *appDescription;

- (instancetype)initWithDictionary:(NSDictionary *)dictionsry;

@end
