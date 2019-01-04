//
//  Contacts.h
//  Stretch Problem 17 - sectioned table view
//
//  Created by Kaleo Kim on 6/2/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Contact : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

- (NSString *)fullName;

@end
