//
//  JokeTableViewCell.m
//  Jokes Juke
//
//  Created by saad dar on 2/12/17.
//  Copyright © 2017 Magic Minds. All rights reserved.
//

#import "JokeTableViewCell.h"

@implementation JokeTableViewCell

@synthesize title = _title;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
