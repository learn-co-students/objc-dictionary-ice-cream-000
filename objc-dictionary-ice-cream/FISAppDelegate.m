//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSMutableArray *names = [[NSMutableArray alloc] init];
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla",
                                      @"Sophie" : @"Mexican Chocolate",
                                      @"Deniz"  : @"Natural Vanilla",
                                      @"Tom"    : @"Mexican Chocolate",
                                      @"Jim"    : @"Natural Vanilla",
                                      @"Mark"   : @"Cookies 'n Cream" };
    
    for (NSString *name in [iceCreamByName allKeys]) {
        if ([iceCreamByName[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    return names;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    NSMutableDictionary *iceCreamCounts = [[NSMutableDictionary alloc] init];
    // what's the deal with this taking a passed in dictionary yet also relying on the hardcoded dictionary in namesForIceCream, it's weird
    
    for (NSString *iceCream in [iceCreamByName allValues]) {
        iceCreamCounts[iceCream] = @([[self namesForIceCream:iceCream] count]);
    }
    
    return iceCreamCounts;
}

@end
