//
//  Card.h
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *code;
@property (strong, nonatomic) NSString *value;
@property (strong, nonatomic) NSURL *imageURL;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;

@end
