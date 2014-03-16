//
//  Movie.m
//  RottenMoviesApp
//
//  Created by Anthony Sherbondy on 3/16/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import "Movie.h"

@implementation Movie

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if (self) {
        self.title = dictionary[@"title"];
        self.synopsis = dictionary[@"synopsis"];
    }
    
    return self;
}

+ (NSArray *)moviesFromArray:(NSArray *)array
{
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in array) {
        Movie *movie = [[Movie alloc] initWithDictionary:dictionary];
        [movies addObject:movie];
    }
    return movies;
}

@end
