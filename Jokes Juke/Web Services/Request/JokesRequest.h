//
//  JokesRequest.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"
#import "Utils.h"

@interface JokesRequest : NSObject

@property (nonatomic,strong) id delegate;
@property (nonatomic , strong) NSString * jokesUrl;
@property (nonatomic, strong) NSString * type;

- (id)init;
- (id)initWithDelegate:(id) delegate jokeType:(enum JokeType) jokeType;

@end
