//
//  MeasureUnit.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "MeasureUnit.h"

@implementation MeasureUnit

- (id)init: (NSNumber *) id withTitle:(NSString *)name withAllowableValues: (NSArray *) values
{
    self = [super init: id];
    if (self) {
        _domain = values;
        _name = name;
    }
    return self;
}

@end
