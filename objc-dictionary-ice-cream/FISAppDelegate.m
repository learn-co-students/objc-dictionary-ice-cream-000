//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 * Write your custom method bodies here.
 */



-(NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla"            ,
                                      @"Sophie" : @"Mexican Chocolate"          ,
                                      @"Deniz"  : @"Natural Vanilla"            ,
                                      @"Tom"    : @"Mexican Chocolate"          ,
                                      @"Jim"    : @"Natural Vanilla"            ,
                                      @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *keys =  [NSMutableArray array];

    for (NSString *key in iceCreamByName) {
        if ([iceCream isEqualToString:iceCreamByName[key]]){
            [keys addObject:key];
        };
    }
    
   return keys;
};
    

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsOfIceCream = [NSMutableDictionary dictionary];
    
    NSMutableArray *distinctFlavors = [NSMutableArray array];
    
    for (NSString *key in iceCreamByName){
        if (![distinctFlavors containsObject:iceCreamByName[key]]){
            [distinctFlavors addObject: iceCreamByName[key]];
        }
    }

    NSLog(@"%@", distinctFlavors);
    
    for (NSString *flavor in distinctFlavors){
        NSArray *names = [NSArray array];
        names = [self namesForIceCream:flavor];
        NSUInteger countInteger = [names count];
        NSNumber *countNumber = @(countInteger);
        
        countsOfIceCream[flavor] = countNumber;
        
        NSLog(@"%@", flavor);
        NSLog(@"%@", names);
        NSLog(@"%tu", countInteger);
        NSLog(@"%@", countsOfIceCream);
    }
    
    return countsOfIceCream;
};

@end
