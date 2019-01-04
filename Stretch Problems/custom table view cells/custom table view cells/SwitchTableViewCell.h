//
//  SwitchTableViewCell.h
//  custom table view cells
//
//  Created by Kaleo Kim on 5/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchTableViewCellDelegate;

@interface SwitchTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;

@property (weak, nonatomic) id<SwitchTableViewCellDelegate> delegate;

@end

@protocol SwitchTableViewCellDelegate <NSObject>

- (void) cellSwitchToggle:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell;
    


@end
