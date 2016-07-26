//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *) namesForIceCream: (NSString *) iceCream {
   
    NSMutableArray *name = [[NSMutableArray alloc] init];
    
    NSDictionary *nameIceCream = @{@"Joe"       :   @"Peanut Butter and Chocolate",
                                   @"Tim"       :   @"Natural Vanilla",
                                   @"Sophie"    :   @"Mexican Chocolate",
                                   @"Deniz"     :   @"Natural Vanilla",
                                   @"Tom"       :   @"Mexican Chocolate",
                                   @"Jim"       :   @"Natural Vanilla",
                                   @"Mark"      :   @"Cookies 'n Cream"};
    
    for (NSString *key in nameIceCream) {
        if ([nameIceCream[key] isEqualToString:iceCream])
            [name addObject: key];
        
    }

    return name;
}



- (NSDictionary *) countsOfIceCream: (NSDictionary *) iceCreamByName{
    
    FISAppDelegate *names = [[FISAppDelegate alloc] init];
    NSMutableDictionary *iceCreamAndNames = [[NSMutableDictionary alloc] init];
    
    for (NSString *key in iceCreamByName) {
    NSArray *name = [names namesForIceCream:iceCreamByName[key]];
    NSUInteger x = [name count];
    NSNumber *counts = @(x);
    [iceCreamAndNames setObject:counts forKey:iceCreamByName[key]];
    }
    
    
    return iceCreamAndNames;
    
    }


@end