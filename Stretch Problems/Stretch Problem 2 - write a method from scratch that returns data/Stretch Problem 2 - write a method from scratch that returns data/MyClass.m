//
//  MyClass.m
//  Stretch Problem 2 - write a method from scratch that returns data
//
//  Created by Kaleo Kim on 4/30/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "MyClass.h"

//@interface MyClass ()
//
//@property (strong, nonatomic) NSObject *obj;
//
//@end
@implementation MyClass

+ (NSString *)fullNameWithFirstName:(NSString *)firstname lastName:(NSString *)lastName {
    
    NSString *fullname = [[firstname stringByAppendingString:@" "] stringByAppendingString:lastName];
    
    return fullname;
    
    //or you can do this on the nest line
    //return [[firstname stringByAppendingString:@" "] stringByAppendingString:lastName];
}

@end
