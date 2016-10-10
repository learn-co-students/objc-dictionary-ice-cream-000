//  FISAppDelegate.m

#import "FISAppDelegate.h"

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
