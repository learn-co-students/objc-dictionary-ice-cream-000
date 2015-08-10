//
//  FISAppDelegate.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 Write the countsOfIceCream body which returns a dictionary of the number (value) of people who like each flavor of ice cream (key). 
 
 Look at the countsByIceCream dictionary in the FISAppDelegateSpec file to better understand what the test is expecting.
 Hint: Try using the namesForIceCream: method that you just wrote to get a list of names for each ice cream flavor by calling it on self. This method returns an array of names which you can then count. Remember that you have to convert integer values to NSNumber in order to store them in a collection.
 
 */

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *list = @{ @"Joe"   : @"Peanut Butter and Chocolate",
                            @"Tim"   : @"Natural Vanilla",
                            @"Sophie": @"Mexican Chocolate",
                            @"Deniz" : @"Natural Vanilla",
                            @"Tom"   : @"Mexican Chocolate",
                            @"Jim"   : @"Natural Vanilla",
                            @"Mark"  : @"Cookies 'n Cream"
                        };
    
    NSMutableArray *namesList = [NSMutableArray new];
    
    for (NSString *name in [list allKeys]) {
        if ([iceCream isEqualToString:list[name]]) {
            // NSLog(@"\n\n\n\n\n-- %@: %@/%@ --\n\n\n\n\n\n",iceCream, name, list[name]);
            
            [namesList addObject:name];
        }
    }
    
    return [NSArray arrayWithArray:namesList];
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *total = [NSMutableDictionary new];
    
    for(NSString *n in [iceCreamByName allKeys]) {
        
        NSMutableArray *namesList = [NSMutableArray arrayWithArray:[self namesForIceCream:iceCreamByName[n]]];
        
        total[iceCreamByName[n]] = @(namesList.count);
        
        // NSLog(@"\n\n\n -- %@ %@ -- \n\n\n", iceCreamByName[n], @(namesList.count));
    }
    
    return total;
}
@end
