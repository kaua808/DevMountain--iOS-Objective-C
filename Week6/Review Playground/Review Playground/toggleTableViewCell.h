//
//  toggleTableViewCell.h
//  Review Playground
//
//  Created by Kaleo Kim on 6/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToggleCellDelegate;

@interface toggleTableViewCell : UITableViewCell

@property (weak, nonatomic) id<ToggleCellDelegate> delegate;

@end

@protocol ToggleCellDelegate <NSObject>

- (void)toggle:(UISwitch *)toggle changedValueFromSender:(toggleTableViewCell *)sender;

@end