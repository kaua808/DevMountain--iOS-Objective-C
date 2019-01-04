//
//  Deck.m
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Deck.h"

static NSString * const kIdentifierKey = @"deck_id";

@implementation Deck

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.identifier = dictionary[kIdentifierKey];
    }
    return self;
}

- (NSDictionary *)dictionaryRepresentation {
    return @{kIdentifierKey: self.identifier
             };
}

@end
