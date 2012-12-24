//
//  MeasureUnit.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entity.h"

@interface MeasureUnit : Entity

@property (readonly) NSString * name;
@property (readonly) NSArray * domain;

- (id)init: (int)id withTitle: (NSString *)name withAllowableValues: (NSArray *) values;


@end
