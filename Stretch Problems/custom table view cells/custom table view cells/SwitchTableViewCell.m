//
//  SwitchTableViewCell.m
//  custom table view cells
//
//  Created by Kaleo Kim on 5/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "SwitchTableViewCell.h"

@implementation SwitchTableViewCell

+ (NSString *)reuseIdentifier {
    return @"switchCell";
}
- (IBAction)switchToggle:(UISwitch *)sender {
    NSLog(@"cell got the message");
    
    [self.delegate cellSwitchToggle:sender cell:self];
}

@end
