//
//  main.m
//  RandomItems
//
//  Created by Kaleo Kim on 4/24/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store ites address in item variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        // Send another mesage, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array....
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        //BNRItem *item = [[BNRItem alloc] init];
        
        // This creates an NSString, "red sofa" and gives it to the BNRItem
        //[item setItemName:@"Red Sofa"];
        //item.itemName = @"Red Sofa";
        
        // This Creates an NSString, "A1B2C" and gives it to the BNRItem
        //[item setSerialNuber:@"A1B2C"];
        //item.serialNumber = @"A1B2C";
        
        // This sends the vaue 100 to be used as the valueInDollars of this BNRItem
        //[item setValueInDollars:100];
        //item.valueInDollars = 100;
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        
        // The %@ token is replaced with the result of  sending
        // the description message to the corresponding arguments
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        // Destory the mutable array object
        items = nil;
        
        
    }
    return 0;
}
