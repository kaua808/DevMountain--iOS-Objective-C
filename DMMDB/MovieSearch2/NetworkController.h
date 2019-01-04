//
//  NetworkController.h
//  MovieSearch2
//
//  Created by Kaleo Kim on 5/26/15.
//  Copyright (c) 2015 Mott Applications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

+ (NSString *)baseURLString;
+ (NSString *)parametersWithAPIKey:(NSDictionary *)parameters;
+ (NSString *)apiKey;

@end
