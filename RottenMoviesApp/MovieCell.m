//
//  MovieCell.m
//  RottenMoviesApp
//
//  Created by Anthony Sherbondy on 3/16/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import "MovieCell.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface MovieCell()
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;

@end

@implementation MovieCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMovie:(Movie *)movie
{
    _movie = movie;
    
    self.movieTitleLabel.text = movie.title;
    self.synopsisLabel.text = movie.synopsis;
    self.castLabel.text = [movie.cast componentsJoinedByString:@", "];
    [self.posterView setImageWithURL:[NSURL URLWithString:movie.posterThumbnailURL]];

}

@end
