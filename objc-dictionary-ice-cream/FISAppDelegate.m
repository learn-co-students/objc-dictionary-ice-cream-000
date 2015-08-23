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

-(NSArray *)namesForIceCream: (NSString*) iceCream{
    
    NSDictionary *iceCreamChoices = @{@"Joe" : @"Peanut Butter and Chocolate",
                                      @"Tim" : @"Natural Vanilla",
                                      @"Sophie" : @"Mexican Chocolate",
                                      @"Deniz" : @"Natural Vanilla",
                                      @"Tom" : @"Mexican Chocolate",
                                      @"Jim" : @"Natural Vanilla",
                                      @"Mark" : @"Cookies 'n Cream"
                                      };
    NSMutableArray *names = [[NSMutableArray alloc]init];
    for (NSString *name in iceCreamChoices) {
        if ([iceCreamChoices[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    return names;
}

-(NSDictionary *)countsOfIceCream: (NSDictionary *) iceCreamByName{
    NSMutableDictionary *iceCreamCounts = [[NSMutableDictionary alloc]init];
    for (NSString *key in iceCreamByName) {
        if ([[iceCreamCounts allKeys] containsObject:iceCreamByName[key]] == NO) {
            
            NSUInteger numberOfEaters = [[self namesForIceCream:iceCreamByName[key]] count];
            
            iceCreamCounts[iceCreamByName[key]] = @(numberOfEaters);
        }
    }
    return iceCreamCounts;
}



@end
