//
//  JokesViewController.m
//  Jokes Juke
//
//  Created by saad dar on 2/12/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokesViewController.h"
#import "Joke.h"
#import "Jokes.h"
#import "JokeTableViewCell.h"

@interface JokesViewController ()

@end

@implementation JokesViewController

@synthesize jokesList = _jokesList;
@synthesize jokeTableview = _jokeTableview;
@synthesize jokesModelView = _jokesModelView;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.jokeTableview.dataSource = self;
    _jokesModelView = [[JokesModelView alloc]initWithDeleagte:self];
    _jokesList = [[NSArray alloc]init];
    [self addControls];
    [self loadJokes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void) addControls {
    
    // Initialize the refresh control.
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.backgroundColor = [UIColor lightGrayColor];
    self.refreshControl.tintColor = [UIColor whiteColor];
    [self.refreshControl addTarget:self
                            action:@selector(loadJokes)
                  forControlEvents:UIControlEventValueChanged];
    
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 10.0)
        self.jokeTableview.refreshControl = self.refreshControl;
    else
        [self.jokeTableview addSubview:self.refreshControl];
}

- (void) loadJokes {
    
    [_jokesModelView loadJokes];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if (_jokesList) {
        
        self.jokeTableview.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        return 1;
        
    } else {
        
        // Display a message when the table is empty
        UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        
        messageLabel.text = @"No data is currently available. Please pull down to refresh.";
        messageLabel.textColor = [UIColor blackColor];
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = NSTextAlignmentCenter;
        messageLabel.font = [UIFont fontWithName:@"Palatino-Italic" size:20];
        [messageLabel sizeToFit];
        
        self.jokeTableview.backgroundView = messageLabel;
        self.jokeTableview.separatorStyle = UITableViewCellSeparatorStyleNone;
        
    }
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (_jokesList) {
        return [_jokesList count];
    }
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = @"JokeTableViewCell";
    
    JokeTableViewCell *cell = (JokeTableViewCell *)[self.jokeTableview dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:simpleTableIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    Joke *joke = [_jokesList objectAtIndex:indexPath.row];
    
    [cell.title  setText: [joke joke]];
    
    return cell;
}

#pragma mark - Jokes Delegate

-(void) updateUIWithJokes:(NSArray *) jokes {
    
    
    
    
    if(jokes != nil) {
        self.jokesList = jokes;
        [self.jokeTableview reloadData];
    }
    
    if (self.refreshControl) {
        [self.refreshControl endRefreshing];
    }

}

-(void) noJokesToUpdateUI:(NSString *)errorReason {
    
}

@end
