//
//  JokesFacade.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JokesService.h"

@interface JokesFacade : NSObject

@property (nonatomic,strong) JokesService *service;

- (id)init;
- (void) getRandomJokesWithCountWithDelegate: (id) delegate;
@end
