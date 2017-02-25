//
//  JokesService.h
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JokesDelegate.h"
#import "JokesRequest.h"

@interface JokesService : NSObject

@property (nonatomic,strong) JokesRequest *requestObj;

- (id)initWithRequest: (JokesRequest*) request;
- (void) dispatchRequest;

@end
