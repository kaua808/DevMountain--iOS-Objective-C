//
//  Contacts.m
//  Stretch Problem 17 - sectioned table view
//
//  Created by Kaleo Kim on 6/2/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (NSString *)fullName
{
    return [[self.firstName stringByAppendingString:@" "] stringByAppendingString:self.lastName];
}

@end
