//
//  ListProvider.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/22/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "List.h"

@interface ListProvider : NSObject
{
    NSMutableArray * _lists;
}

-(NSMutableArray *) getAll;
-(int) nextID;
- (int) count;
-(void) insert:(List *)list;
@end
