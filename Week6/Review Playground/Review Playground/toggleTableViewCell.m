//
//  toggleTableViewCell.m
//  Review Playground
//
//  Created by Kaleo Kim on 6/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "toggleTableViewCell.h"

@implementation toggleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)switchedToggled:(UISwitch *)sender {
    
    [self.delegate toggle:sender changedValueFromSender:self];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
