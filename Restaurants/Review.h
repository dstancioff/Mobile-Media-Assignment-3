//
//  Review.h
//  Restaurants
//
//  Created by Dimitri Stancioff on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{
    NSString* text;
    NSString* reviewer;
    int score;
    int numberOfHelpfulReviews;
    int numberOfUnhelpfulReviews;
}

@property (readwrite, strong) NSString *text;
@property (readwrite, strong) NSString *reviewer;
@property (readwrite) int score;
@property (readwrite) int numberOfHelpfulReviews;
@property (readwrite) int numberOfUnhelpfulReviews;

-(float) helpfulPercentage;

@end
