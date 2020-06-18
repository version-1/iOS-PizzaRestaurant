//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Administlator on 2020/06/18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "Kitchen.h"
#import "Topping.h"
@implementation Pizza
- (instancetype) initWthSize: (NSInteger) size {
    _size = size;
    return self;
}
- (NSString*) toString {
    NSMutableString *str = [NSMutableString new];
    [str appendFormat: @"size: %@ \n", _size];
    [str appendString: @"toppings: "];
    for (Topping *topping in _toppings) {
        [str appendFormat: @"%@, ", topping.name];
    }
    return str;
}
@end
