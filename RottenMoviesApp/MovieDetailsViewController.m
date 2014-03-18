//
//  MovieDetailsViewController.m
//  RottenMoviesApp
//
//  Created by Anthony Sherbondy on 3/16/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import "MovieDetailsViewController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface MovieDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;
@end

@implementation MovieDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // We may already have the movie set so we need to hook up the UI to the movie
    [self updateDetails];
    
    // Add the close uibarbutton
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Close" style:UIBarButtonItemStylePlain target:self action:@selector(doneWithDetails)];
    
}

-(void)doneWithDetails
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setMovie:(Movie *)movie
{
    _movie = movie;
    [self updateDetails];
}

-(void)updateDetails
{
    self.title = self.movie.title;
    self.synopsisLabel.text = self.movie.synopsis;
    self.castLabel.text = [self.movie.cast componentsJoinedByString:@", "];
    [self.movieImageView setImageWithURL:[NSURL URLWithString:self.movie.posterDetailURL]];
}

@end
