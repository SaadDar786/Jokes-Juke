//
//  JokesService.m
//  Jokes Juke
//
//  Created by saad dar on 2/11/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokesService.h"
#import <RestKit/RestKit.h>
#import "Joke.h"
#import "Jokes.h"
#import "Settings.h"
#import "JokesRequest.h"

@implementation JokesService

@synthesize requestObj = _requestObj;

- (id)initWithRequest: (JokesRequest*) request{
    
    self = [super init];
    if (self) {
        self.requestObj = request;
    }
    return self;
}

- (void) dispatchRequest{
    
    RKObjectMapping *jokesMapping = [RKObjectMapping mappingForClass:[Jokes class]];
    
    RKObjectMapping *jokeMapping = [RKObjectMapping mappingForClass:[Joke class]];
    [jokeMapping addAttributeMappingsFromArray:@[@"joke",@"categories"]];
    
    [jokesMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"value"
                                                                                   toKeyPath:@"value"
                                                                                 withMapping:jokeMapping]];
    
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_requestObj.jokesUrl]];
    
    RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:jokesMapping method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:nil];

    
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescriptor]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *result) {
        NSArray *jokesList = [result array];
        [_requestObj.delegate jokesServiceSuccess:jokesList];
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        [_requestObj.delegate jokesServiceFailure:[error localizedDescription]];
    }];
   
    [operation start];

}

@end
