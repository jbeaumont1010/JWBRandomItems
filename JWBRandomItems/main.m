//
//  main.m
//  RandomItems
//
//  Created by Joseph Beaumont on 1/27/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWBItem.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            JWBItem *item = [JWBItem randomItem];
            [items addObject:item];
        }
        
        
        for (JWBItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // Bronze challenge - Attempts to print the 10th element in the array of items
        //NSLog(@"%@", items[10]);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}