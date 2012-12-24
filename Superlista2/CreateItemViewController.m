//
//  CreateItemViewController.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateItemViewController.h"
#import "CreateListViewController.h"

@interface CreateItemViewController ()

@end

@implementation CreateItemViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.unitProvider = [[MeasureUnitProvider alloc] init];
    _currentUnit = [self.unitProvider getAll][0];
     _quantity = _currentUnit.domain[0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [self.unitProvider count];
    }
    else{
        return [[_currentUnit domain] count];
    }
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{    
    if (component == 0) {
        MeasureUnit * unit = [self.unitProvider getAll][row];
        return unit.name;
    }
    else{
        NSNumber * quantity = _currentUnit.domain[row];
        return [NSString stringWithFormat:@"%d", quantity.integerValue];
    }
    return @"title";
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0){
        _currentUnit = [self.unitProvider getAll][row];
        [self.unitPicker reloadComponent:1];
    }else{
        _quantity =  _currentUnit.domain[row];
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"pase prepare for segue");
    
    if ([segue.identifier isEqualToString: @"pushFromCreateItemToList"]) {
        CreateListViewController  * createListVC = [segue destinationViewController];
        createListVC.list = self.list;
    }
}


- (IBAction)saveItem:(UIBarButtonItem *)sender {
    ListItem * item =[[ListItem alloc] init: [self.unitProvider nextID]
                                  withTitle:self.itemName.text
                                   withUnit:_currentUnit];
    item.quantity = [_quantity intValue];
    [self.list add: item];
    [self performSegueWithIdentifier:@"pushFromCreateItemToList" sender:self.view];
}
@end
