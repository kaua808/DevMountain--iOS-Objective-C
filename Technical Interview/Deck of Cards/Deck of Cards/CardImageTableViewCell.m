//
//  CardImageTableViewCell.m
//  Deck of Cards
//
//  Created by Kaleo Kim on 7/13/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "CardImageTableViewCell.h"

@interface CardImageTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImage;

@end

@implementation CardImageTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithCard:(Card *)card {
    
    self.cardImage.image = [UIImage new];
    
    UILabel *loadingLabel = [UILabel new];
    loadingLabel.frame = self.cardImage.frame;
    loadingLabel.text = @"loading";
    [self.cardImage addSubview:loadingLabel];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:card.imageURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSLog(@"%@", data);
        
        if (!error) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImage.image = [UIImage imageWithData:data];
                [loadingLabel removeFromSuperview];
            });
            
        } else {
            NSLog(@"%@", error.description);
        }
        
    }];
    
    [dataTask resume];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
