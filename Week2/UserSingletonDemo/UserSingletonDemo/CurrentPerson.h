//
//  CurrentPerson.h
//  UserSingletonDemo
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface CurrentPerson : NSObject

@property (strong, nonatomic) NSNumber *FavoriteNumber;
@property (nonatomic) UIColor *favoriteColor;

+ (instancetype)currentUser;

@end
