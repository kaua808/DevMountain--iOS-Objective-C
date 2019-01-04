//
//  CardImageTableViewCell.h
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/13/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"

@interface CardImageTableViewCell : UITableViewCell

- (void)updateWithCard:(Card *)card;

@end
