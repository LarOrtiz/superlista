//
//  ListItem.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MeasureUnit.h"

@interface ListItem : Entity

@property NSString * title;
@property (weak) MeasureUnit * unit;
@property NSInteger quantity;

- (id)init: (NSNumber *)id withTitle:(NSString *)title withUnit:(MeasureUnit *) unit;


@end
