//
//  Deck.h
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject

@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSArray *card;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;

@end
