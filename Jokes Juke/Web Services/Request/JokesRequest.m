//
//  JokesRequest.m
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokesRequest.h"
#import "Utils.h"
#import "Settings.h"

@implementation JokesRequest

@synthesize delegate = _delegate;
@synthesize jokesUrl = _jokesUrl;



- (id)init{
    
    self = [super init];
    if (self) {
        // Do something
    }
    return self;
}


- (id)initWithDelegate:(id) delegate jokeType:(enum JokeType) jokeType{
    
    self = [super init];
    if (self) {
        // Do nothing
        self.jokesUrl = [self getJokesUrlWithType:jokeType];
        self.delegate = delegate;
    }
    return self;
}


- (NSString *) getJokesUrlWithType: (enum JokeType) type
{
    NSString * url;
    switch(type)
    {
        case Random :
            url = [NSString stringWithFormat:@"%@%@%@%@", Base_URL, Jokes_URL, Random_URL, Jokes_count];
            break;

        case CATEGORY :
            NSLog(@"Well done\n" );
            break;
        
        default :
            NSLog(@"Invalid \n" );
    }
    
    return url;
}

@end
