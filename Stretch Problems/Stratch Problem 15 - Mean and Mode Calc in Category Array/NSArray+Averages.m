//
//  NSArray+Averages.m
//  
//
//  Created by Kaleo Kim on 5/26/15.
//
//

#import "NSArray+Averages.h"

@implementation NSArray (Averages)

- (NSNumber *)mode
{
    NSMutableDictionary *modeDictionary = [NSMutableDictionary new];
    for (NSNumber *number in self)
    {
        NSNumber *numberFrequency = [modeDictionary objectForKey:number];
        if (numberFrequency == nil)
        {
            [modeDictionary setObject:@1 forKey:number];
        }
        else
        {
            int numberFrequencyInt = [numberFrequency intValue];
            numberFrequencyInt++;
            //            [modeDictionary removeObjectForKey:number];
            [modeDictionary setObject:[NSNumber numberWithInt:numberFrequencyInt] forKey:number];
        }
    }
    
    NSNumber *mostCommonNumber;
    NSNumber *frequency;
    NSArray *keysArray = [modeDictionary allKeys];
    
    for (NSNumber *key in keysArray)
    {
        if (frequency == nil)
        {
            mostCommonNumber = key;
            frequency = [modeDictionary objectForKey:key];
        }
        else
        {
            if ([frequency intValue] < [[modeDictionary objectForKey:key] intValue])
            {
                mostCommonNumber = key;
                frequency = [modeDictionary objectForKey:key];
            }
        }
    }
    
    return mostCommonNumber;
}

@end
