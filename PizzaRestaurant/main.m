//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            PizzaSize *size;
            NSString *word = commandWords[0];
            if ([word isEqualToString: @"small"]) {
                size = Small;
            }
            if ([word isEqualToString: @"medium"]) {
                size = Medium;
            }
            if ([word isEqualToString: @"large"]) {
                size = Large;
            }
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:size :[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
            NSLog([pizza toString]);
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

