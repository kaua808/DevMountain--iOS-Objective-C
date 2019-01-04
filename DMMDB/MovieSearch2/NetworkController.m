//
//  NetworkController.m
//  MovieSearch2
//
//  Created by Kaleo Kim on 5/26/15.
//  Copyright (c) 2015 Mott Applications. All rights reserved.
//

#import "NetworkController.h"

static NSString *kAPIKey = @"82375d44a00bc1a74c0df39c8d1fd572";

@implementation NetworkController

+ (NSString *)baseURLString
{
    return @"https://api.themoviedb.org/3/";
}

+ (NSString *)parametersWithAPIKey:(NSDictionary *)parameters
{
    NSString *parameterString = @"";
    parameterString = [parameterString stringByAppendingString:[self apiKey]];
    
    for (NSString *key in [parameters allKeys])
    {
        parameterString = [parameterString stringByAppendingString:@"&"];
        parameterString = [parameterString stringByAppendingString:[key stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        parameterString = [parameterString stringByAppendingString:@"="];
        parameterString = [parameterString stringByAppendingString:[parameters[key] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    }
    
    return parameterString;
}

+ (NSString *)apiKey
{
    return [@"?api_key=" stringByAppendingString:kAPIKey];
}



@end
