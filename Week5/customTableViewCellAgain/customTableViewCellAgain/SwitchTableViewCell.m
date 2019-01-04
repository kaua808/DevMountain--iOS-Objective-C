//
//  SwitchTableViewCell.m
//  customTableViewCellAgain
//
//  Created by Kaleo Kim on 5/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "SwitchTableViewCell.h"

@implementation SwitchTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (NSString *)reuseIdentifier {
    return @"switchCell";
}

- (IBAction)switchToggleTapped:(id)sender {
    NSLog(@"Taggle Tapped");
    
  [self.delegate cellSwitchToggle:sender cell:self];
}

@end
