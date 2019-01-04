//
//  DetailViewController.h
//  DayX2
//
//  Created by Kaleo Kim on 5/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Entry *entry;

@end
