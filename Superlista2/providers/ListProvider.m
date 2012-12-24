//
//  ListProvider.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "ListProvider.h"

@implementation ListProvider


- (id)init
{
    self = [super init];
    if (self) {
        _lists = [[NSMutableArray alloc] init];
        List * list;
        
        MeasureUnit * kilogram = [[MeasureUnit alloc] init: 1
                                             withTitle:@"Kilogram"
                                   withAllowableValues:@[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10]];
        
        for (int i=1; i<3; i++) {
            list = [[List alloc] init:i
                            withTitle:[NSString stringWithFormat:@"List %d",i]];
            
            for (int j=0; j<5; j++) {
                ListItem * item = [[ListItem alloc] init:j 
                                    withTitle:[NSString stringWithFormat:@"ListItem %d from List %d",j,i]
                                        withUnit:kilogram];
                
                if(j%2==0){
                    item.pending = false;
                }
                
                [list add: item];
            }
            
            [_lists addObject: list];
        }
    }
    return self;
}

-(NSMutableArray *) getAll{
    return _lists;
}

-(int) nextID{
    return self.count+1;
}


- (int) count{
   return _lists.count;
}

-(void) insert:(List *)list
{
    [_lists addObject:list];
}



@end
