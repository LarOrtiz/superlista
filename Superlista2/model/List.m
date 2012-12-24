//
//  List.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "List.h"

@implementation List

- (id)init: (int)id withTitle:(NSString *)title;
{
    self = [super init: id];
    if (self) {
        self.title = title;
        self.items = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)add:(ListItem *)item
{
    [self.items addObject: item];
}

-(NSArray *)getPending{
    return [self.items filteredArrayUsingPredicate: [NSPredicate predicateWithBlock:
                        ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                            ListItem * item =evaluatedObject;
                            return item.pending;
                        }]];
}

-(NSArray *)getDone{
    return [self.items filteredArrayUsingPredicate: [NSPredicate predicateWithBlock:
                        ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                            ListItem * item =evaluatedObject;
                            return !item.pending;
                        }]];
}


@end
