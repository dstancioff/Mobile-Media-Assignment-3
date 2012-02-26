//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"

@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened;

-(int)age
{
    return 2012 - yearOpened;
}


@end
