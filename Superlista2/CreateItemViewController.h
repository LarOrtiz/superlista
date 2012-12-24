//
//  CreateItemViewController.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListProvider.h"
#import "MeasureUnitProvider.h"

@interface CreateItemViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    MeasureUnit * _currentUnit;
    NSNumber * _quantity;
}

@property (strong, nonatomic) IBOutlet UITextField *itemName;
@property (strong, nonatomic) IBOutlet UIPickerView *unitPicker;
@property (strong, nonatomic) MeasureUnitProvider * unitProvider;
@property (strong, nonatomic) List * list;

- (IBAction)saveItem:(UIBarButtonItem *)sender;

@end
