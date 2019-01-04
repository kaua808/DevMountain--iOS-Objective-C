//
//  AppResult.m
//  NSUrlSessionPlayground
//
//  Created by Kaleo Kim on 5/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppResult.h"

@implementation AppResult

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.appName = dictionary[@"trackname"];
        self.developer = dictionary[@"artistName"];
        self. appDescription = dictionary[@"description"];
    }
    return self;
}

@end
