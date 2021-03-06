//
//  List.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entity.h"
#import "ListItem.h"


@interface List : Entity

@property NSString * title;
@property NSMutableArray * items;


- (id)init: (int)id withTitle:(NSString *)title;

-(void)add:(ListItem *)item;

-(NSArray *)getPending;

-(NSArray *)getDone;


@end
