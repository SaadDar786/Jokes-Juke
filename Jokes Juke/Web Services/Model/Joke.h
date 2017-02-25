//
//  Joke.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Joke : NSObject

@property (strong,nonatomic) NSString *joke;
@property (nonatomic) int idJoke;
@property (strong,nonatomic) NSArray *categories;

@end
