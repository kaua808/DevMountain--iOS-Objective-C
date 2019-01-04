//
//  ContactController.h
//  Stretch Problem 17 - sectioned table view
//
//  Created by Kaleo Kim on 6/2/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@import UIKit;

@interface ContactController : NSObject

@property (strong, nonatomic, readonly) NSArray *contacts;

+ (ContactController *)sharedinstance;

- (NSDictionary *)indexedContacts;


@end
