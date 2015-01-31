//
//  JWBItem.h
//  RandomItems
//
//  Created by Joseph Beaumont on 1/27/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import <Foundation/Foundation.h>

// @interface declares class.  Followed by the name of the class (JWBItem) followed by the super class
@interface JWBItem : NSObject
{
    // Instance variables noted by the underscore
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

//Class method
+ (instancetype)randomItem;

- (instancetype)initWithItemName: (NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

//Setter and getter methods
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;


@end