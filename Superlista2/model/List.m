//
//  List.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "List.h"

@implementation List

- (id)init: (NSNumber *)id withTitle:(NSString *)title;
{
    self = [super init: id];
    if (self) {
        self.title = title;
        self.items = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)add:(ListItem *)item
{
    [self.items setObject:item forKey: item.id];
}

@end
