//
//  ListItem.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "ListItem.h"

@implementation ListItem

- (id)init: (NSNumber *)id withTitle:(NSString *)title withUnit:(MeasureUnit *) unit
{
    self = [super init: id];
    if (self) {
        self.unit = unit;
        self.title = title;
    }
    return self;
}
@end
