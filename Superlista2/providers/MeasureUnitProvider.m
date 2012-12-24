//
//  MeasureUnitProvider.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/23/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "MeasureUnitProvider.h"
#import "MeasureUnit.h"

@implementation MeasureUnitProvider

-(NSArray *) getAll
{
    MeasureUnit * kilograms = [[MeasureUnit alloc] init:[NSNumber numberWithInt: 1]
                                             withTitle:@"Kilograms"
                                   withAllowableValues:@[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10]];
    
    MeasureUnit * grams = [[MeasureUnit alloc] init:[NSNumber numberWithInt: 1]
                                             withTitle:@"Grams"
                                   withAllowableValues:@[@100,@150,@200,@250,@300,@350,@400,@450,@500]];
    
    MeasureUnit * kilometers = [[MeasureUnit alloc] init:[NSNumber numberWithInt: 1]
                                             withTitle:@"Kilometers"
                                   withAllowableValues:@[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10]];
    
    MeasureUnit * meters = [[MeasureUnit alloc] init:[NSNumber numberWithInt: 1]
                                             withTitle:@"Meters"
                                   withAllowableValues:@[@100,@200,@300,@400,@500,@600,@700,@800,@900,@1000]];
    
    return @[kilograms, grams,kilometers, meters];
}

-(int) nextID{
    return self.count+1;
}


- (int) count{
    return [self getAll].count;
}

@end
