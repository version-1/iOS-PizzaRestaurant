//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Administlator on 2020/06/18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject
@property (assign) PizzaSize size;
@property NSMutableArray *toppings;
- (instancetype) initWithSize: (PizzaSize) size ;
- (NSString*) toString;
@end

