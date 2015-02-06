//
//  JWBContainer.h
//  JWBRandomItems
//
//  Created by Joseph Beaumont on 1/31/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import "JWBItem.h"


@interface JWBContainer : JWBItem


// Creating instance variables for JWBContainer
{
    NSMutableArray * _subitems;
    NSString * _containerName;
}

// Methods for Container
- (void)setContainerName:(NSString *)str;
- (NSString *)containerName;


- (NSArray *)items;

- (void)addItem:(JWBItem *)item;
- (JWBItem *)itemAtIndex:(int)index;

- (int)valueInDollars;

@end
