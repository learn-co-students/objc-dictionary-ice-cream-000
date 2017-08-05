//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray*)namesForIceCream:(NSString*)iceCream {
    // input is an ice cream flavor
    // out is an array listing all ppl who want that flavor
    
    /*
     Joe likes Peanut Butter and Chocolate
     
     Tim wants Natural Vanilla
     
     Sophie loves Mexican Chocolate
     
     Deniz only likes Natural Vanilla
     
     Tom will eat Mexican Chocolate
     
     Jim never answered so he's getting Natural Vanilla
     
     Mark — Cookies 'n Cream duh
     */
    NSMutableArray* names = [[NSMutableArray alloc]initWithCapacity:5];
    
    NSDictionary *dictNamesForIceCream = @{@"Joe":@"Peanut Butter and Chocolate",
                                           @"Tim":@"Natural Vanilla",
                                           @"Sophie":@"Mexican Chocolate",
                                           @"Deniz":@"Natural Vanilla",
                                           @"Tom":@"Mexican Chocolate",
                                           @"Jim":@"Natural Vanilla",
                                           @"Mark":@"Cookies 'n Cream"};
    
    for (NSString* name in dictNamesForIceCream){
        if ([(NSString*) dictNamesForIceCream[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    return (NSArray*)names;
}

- (NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName {

    // input is dictionary{@"Joe": @"Natural Vanilla", @"Mark":@"Cookies and Cream", etc. }
    
    // output a dictionary where the name of the ice cream is the key and the number of ppl who want it is the value
    
    NSMutableDictionary* result = [[NSMutableDictionary alloc]initWithDictionary:@{}];
    // output {@"Mexican Chocolate":2, @"Natural Vanilla:5", etc}
    
    // so, if the key doesn't exist, set its count to 1
    // so, if the key exists, add one to its count.
    
    
//  get list of all names of ice cream
    NSArray* allIceCreamNames = [[NSArray alloc]initWithArray:[iceCreamByName allValues]];
    
// loop over array of all names of icecream
//    
    for (NSString* iceCreamName in allIceCreamNames){

        if (result[iceCreamName] == nil) {//not used yet
            result[iceCreamName] = [NSNumber numberWithUnsignedInteger:1];
        } else {
            NSUInteger value = [result[iceCreamName] unsignedIntegerValue];
            result[iceCreamName] = [NSNumber numberWithUnsignedInteger:value + 1 ];
        }
    }
//        NSUInteger iceCreamCount = [ [self namesForIceCream:iceCreamName] count];
////        returnCountsOfIceCream[iceCreamName] = iceCreamCount;
//    }
//                                 
    return result;
}
/**
 
 In the FISAppDelegate.m implementation file, use autocomplete to define the method bodies to return nil. At the start of the namesForIceCream: method, 
 
 translate Mark's notes into an NSDictionary with each name as a key with that person's preferred ice cream flavor as the associated value.
 
 When you're done, check your work by looking at the iceCreamByName dictionary in the FISAppDelegateSpec test file. Your dictionary's key-value pairs should match it exactly, but don't just copy/paste it—really try to compose the dictionary yourself. Run the tests now to see that they fail.
 Finish the namesForIceCream: method body to return an array of the names of everyone who likes the ice cream flavor submitted in the string argument. For example, "Mexican Chocolate" should return an array with "Sophie" and "Tom".
 Write the countsOfIceCream body which returns a dictionary of the number (value) of people who like each flavor of ice cream (key). Look at the countsByIceCream dictionary in the FISAppDelegateSpec file to better understand what the test is expecting.
 
 */

@end
