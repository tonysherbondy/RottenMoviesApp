//
//  MoviesViewController.h
//  RottenMoviesApp
//
//  Created by Anthony Sherbondy on 3/16/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import <UIKit/UIKit.h>

#define GREEN [UIColor colorWithRed:55.0/255.0 green:127.0/255.0 blue:0.0/255.0 alpha:1.0]
#define GREEN_HIGHLIGHT [UIColor colorWithRed:55.0/255.0 green:127.0/255.0 blue:0.0/255.0 alpha:0.5]
#define YELLOW [UIColor colorWithRed:253.0/255.0 green:237.0/255.0 blue:0.0/255.0 alpha:1.0]

@interface MoviesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@end
