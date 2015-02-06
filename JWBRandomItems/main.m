//
//  main.m
//  RandomItems
//
//  Created by Joseph Beaumont on 1/27/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWBItem.h"
#import "JWBContainer.h"

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
        // See report file for error and it's explaination.
        //NSLog(@"%@", items[10]);
        
        
        // Gold Challenge - Bringing in an instance of the JWBContainer class and testing it.
        JWBContainer *container = [[JWBContainer alloc] init];
        [container setContainerName:@"My Container for Gold Challenge\n\n"];
        [container addItem:[JWBItem randomItem]];
        [container addItem:[JWBItem randomItem]];
        [container addItem:[JWBItem randomItem]];
        [container addItem:[JWBItem randomItem]];
        
        NSLog(@"\nContainer - %@", container);
        
        
        
        
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}