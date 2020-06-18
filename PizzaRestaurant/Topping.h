//
//  Topping.h
//  PizzaRestaurant
//
//  Created by Administlator on 2020/06/18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Topping : NSObject
@property NSString* name;
- (instancetype) initWithName: (NSString*) string;
@end

NS_ASSUME_NONNULL_END
