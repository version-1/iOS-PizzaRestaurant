//
//  Topping.m
//  PizzaRestaurant
//
//  Created by Administlator on 2020/06/18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Topping.h"

@implementation Topping
- (instancetype) initWithName:(NSString *)name {
    NSArray *toppingType = @[@"ham", @"pineapple", @"cheeze"];
    if ([toppingType containsObject:name]) {
        _name = name;
    } else {
        return nil;
    }
    return self;
}
@end
