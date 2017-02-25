//
//  Utils.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>

enum JokeType
{
    Random = 1,
    CATEGORY
};

@interface Utils : NSObject

+ (BOOL)isInternetAvailable;
+ (NSInteger)randomValueBetween:(NSInteger)min and:(NSInteger)max;

@end
