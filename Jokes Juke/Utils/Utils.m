//
//  Utils.m
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "Utils.h"
#import "Reachability.h"
@implementation Utils

+ (BOOL)isInternetAvailable {
    
    Reachability* curReach = [Reachability reachabilityForInternetConnection];
    NSParameterAssert([curReach isKindOfClass: [Reachability class]]);
    
    NetworkStatus netStatus = [curReach currentReachabilityStatus];
    
    if(netStatus == NotReachable) {
        return NO;
    } else {
        return YES;
    }
}

+ (NSInteger)randomValueBetween:(NSInteger)min and:(NSInteger)max {
    return (NSInteger)(min + arc4random_uniform(max - min + 1));
}



@end
