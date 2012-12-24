//
//  Entity.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>

// Toy class until I figure out how to deal with the DB
@interface Entity : NSObject

@property (readonly) int id;

- (id)init: (int) id;


@end
