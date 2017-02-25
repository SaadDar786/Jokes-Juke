//
//  JokesFacade.m
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokesFacade.h"
#import "JokesRequest.h"
#import "Utils.h"

@implementation JokesFacade


- (id)init{
    
    self = [super init];
    if (self) {
            // Do nothing
    }
    return self;
}


- (void) getRandomJokesWithCountWithDelegate: (id) delegate
{
    JokesRequest *request = [[JokesRequest alloc]initWithDelegate:delegate jokeType:Random];
    JokesService *service = [[JokesService alloc]initWithRequest:request];
    [service dispatchRequest];
    
}


@end
