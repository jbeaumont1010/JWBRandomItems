//
//  JWBContainer.m
//  JWBRandomItems
//
//  Created by Joseph Beaumont on 1/31/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import "JWBContainer.h"

@implementation JWBContainer


// Initializing containerName and subitems from the header class.
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _containerName = @"";
        _subitems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

// Setter for Container
- (void)setContainerName:(NSString *)str
{
    _containerName = str;
}

// Getter for Container
- (NSString *)containerName
{
    return _containerName;
}

- (NSArray *)items
{
    return [[NSArray alloc] initWithArray:_subitems];
}

- (void)addItem:(JWBItem *)item
{
    [_subitems addObject:item];
}

- (JWBItem *)itemAtIndex:(int)index
{
    return _subitems[index];
}


// Calculation for each items valueInDollars added to itself.
- (int)valueInDollars
{
    int total = 0;
    
    for (JWBItem *item in self.items) {
        total = total + item.valueInDollars;
    }
    
    return total;
}


- (NSString *)description
{
    NSString *description = [[NSString alloc] initWithFormat:@"%@ Total value: $%d, Items in Container: %@",
                             self.containerName, self.valueInDollars, self.items];
    
    return description;
}





@end
