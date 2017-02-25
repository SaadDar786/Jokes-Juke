//
//  JokesModelView.m
//  Jokes Juke
//
//  Created by saad dar on 2/20/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokesModelView.h"
#import "Jokes.h"

@implementation JokesModelView

@synthesize jokesFacade = _jokesFacade;


-(instancetype)initWithDeleagte:(id)delegate {
    
    self = [super self];
    if(self) {
        self.delegate = delegate;
        self.jokesFacade = [[JokesFacade alloc]init];
    }
    return self;
}

-(void) loadJokes {
    
    [_jokesFacade getRandomJokesWithCountWithDelegate:self];
}

-(void) jokesServiceSuccess:(NSArray *) jokes {
    
    if([jokes count] != 0)
    {
        Jokes *list = [jokes firstObject];

        [self.delegate updateUIWithJokes:list.value];
    }
    else
        [self.delegate updateUIWithJokes:nil];
    
    
}

-(void) jokesServiceFailure:(NSString *)errorReason {
    
    [self.delegate noJokesToUpdateUI:errorReason];

}

@end
