//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"


@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews;


-(int)age
{
    return 2012 - yearOpened;
}

-(Review*) mostHelpfulReview
{
    Review* mostHelpfulSoFar = nil;
    for (Review* review in reviews) {
        if(review.numberOfHelpfulReviews >= 5 && ([review helpfulPercentage] > [mostHelpfulSoFar helpfulPercentage] || mostHelpfulSoFar == nil))
        {
            mostHelpfulSoFar = review;
        }
    }
    return mostHelpfulSoFar;
}

-(float) averageCustomerReview
{
    int totalPoints = 0;
    for (Review* r in reviews) {
        totalPoints = totalPoints + r.score;
    }
    return (float)totalPoints / (float)[reviews count];
}

@end
