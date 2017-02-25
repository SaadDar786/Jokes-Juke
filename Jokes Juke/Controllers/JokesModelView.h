//
//  JokesModelView.h
//  Jokes Juke
//
//  Created by saad dar on 2/20/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JokesDelegate.h"
#import "JokesFacade.h"


@protocol JokesUpate <NSObject>

-(void) updateUIWithJokes:(NSArray *) jokes;

-(void) noJokesToUpdateUI:(NSString *)errorReason;

@end

@interface JokesModelView : NSObject <JokesDelegate>

@property (strong,nonatomic) JokesFacade *jokesFacade;
@property (nonatomic, assign) id delegate;

-(instancetype)initWithDeleagte:(id)delegate;
-(void) loadJokes;

@end
