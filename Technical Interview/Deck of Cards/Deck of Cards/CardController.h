//
//  CardController.h
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardController : NSObject

+ (void)requestNewDeckWithCompletion:(void (^)(Deck *deck))completion;
+ (void)requestCards:(NSInteger)numberOfCards fromDeck:(Deck *)deck withCompletion:(void (^)(NSArray *cards))completion;

+ (void)shuffleDeck:(Deck *)deck withCompletion:(void(^)(BOOL success))completion;



@end
