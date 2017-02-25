//
//  JokesViewController.h
//  Jokes Juke
//
//  Created by saad dar on 2/12/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JokesFacade.h"
#import "JokesModelView.h"

@interface JokesViewController : UIViewController <JokesUpate,UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) NSArray * jokesList;
@property (strong, nonatomic) JokesModelView * jokesModelView;
@property (nonatomic, strong) UIRefreshControl *refreshControl;
@property (strong, nonatomic) IBOutlet UITableView *jokeTableview;

@end
