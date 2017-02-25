//
//  JokesDelegate.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JokesDelegate <NSObject>

-(void) jokesServiceSuccess:(NSArray *) jokes;

-(void) jokesServiceFailure:(NSString *)errorReason;

@end

