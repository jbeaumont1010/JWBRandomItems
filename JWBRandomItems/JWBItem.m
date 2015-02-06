//
//  JWBItem.m
//  RandomItems
//
//  Created by Joseph Beaumont on 1/27/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import "JWBItem.h"

@implementation JWBItem


- (instancetype)init{
    return [self initWithItemName:@"Item"];
    
}

+ (instancetype)randomItem
{
    // Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, modulo, gives you the remainder.  So adjectiveIndex is a random number from 0 to 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    // Note that NSInteger is not an object, bu a type of definition for "long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    JWBItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

// Designated Initializer
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        // Set dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;
}

    // Silver challenge - Not designated initialize of BRNItem.  Takes instance of NSString that identifies
    // itemName and serialNumber
- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)sNumber

{
    return [self initWithItemName: name
            serialNumber:sNumber];
}


- (instancetype)initWithItemName: (NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
     self.itemName,
     self.serialNumber,
     self.valueInDollars,
     self.dateCreated];
    
    return descriptionString;
}


- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}


- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}
- (NSString *)serialNumber
{
    return _serialNumber;
}


- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

// Date Created is read only, doesn't need a setter
- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end