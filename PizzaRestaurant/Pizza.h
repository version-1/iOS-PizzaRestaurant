//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Administlator on 2020/06/18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject
@property NSInteger size;
@property NSMutableArray *toppings;
- (instancetype) initWithSize: (NSInteger) size ;
- (NSString*) toString;
@end

NS_ASSUME_NONNULL_END
