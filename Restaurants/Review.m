//
//  Review.m
//  Restaurants
//
//  Created by Dimitri Stancioff on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize text;
@synthesize reviewer;
@synthesize score;
@synthesize numberOfHelpfulReviews;
@synthesize numberOfUnhelpfulReviews;

-(float) helpfulPercentage
{
    return ((float)numberOfHelpfulReviews / (float)(numberOfHelpfulReviews + numberOfUnhelpfulReviews));
}

@end
