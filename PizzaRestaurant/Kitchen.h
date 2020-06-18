//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject
typedef NS_ENUM(NSInteger, PizzaSize) {
    Small = 0,
    Medium = 1,
    Large = 2
};


- (instancetype) makePizzaWithSize: (PizzaSize)size :(NSArray *)toppings;
@end
