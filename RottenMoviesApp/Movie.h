//
//  Movie.h
//  RottenMoviesApp
//
//  Created by Anthony Sherbondy on 3/16/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;

- (id) initWithDictionary:(NSDictionary *)dictionary;
+ (NSArray *)moviesFromArray:(NSArray *)array;
@end
