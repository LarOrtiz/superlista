//
//  MeasureUnitProvider.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/23/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MeasureUnitProvider : NSObject

-(NSArray *) getAll;
-(int) nextID;
- (int) count;
@end
