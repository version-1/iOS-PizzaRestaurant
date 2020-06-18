//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "Topping.h"
@implementation Kitchen
- (Pizza*) makePizzaWithSize:(PizzaSize)size :(NSArray *)toppings {
    Pizza *pizza = [[Pizza alloc] initWithSize: size];
    for (id name in toppings) {
        Topping *topping = [[Topping alloc] initWithName:name];
        if (topping != nil) {
          [pizza.toppings addObject:topping];
        }
    }
    return pizza;
}

@end
