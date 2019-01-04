//
//  CardTableViewDataSource.m
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "CardTableViewDataSource.h"
@import UIKit;
#import "CardController.h"
#import "CardImageTableViewCell.h"

static NSString * const kCardCellID = @"cardCell";

@interface CardTableViewDataSource () <UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) NSArray *cards;


@end


@implementation CardTableViewDataSource

- (void)configureTableView:(UITableView *)tableView {
    
    self.tableView = tableView;
    
    [CardController requestNewDeckWithCompletion:^(Deck *deck) {
        
        self.deck = deck;
        
        [CardController shuffleDeck:deck withCompletion:^(BOOL success) {
            [CardController requestCards:52 fromDeck:deck withCompletion:^(NSArray *cards) {
                self.cards = cards;
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.tableView reloadData];
                });
            }];
        }];
    }];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Card *card = self.cards[indexPath.row];
    
    CardImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCardCellID];
    [cell updateWithCard:card];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cards.count;
}

@end
