//
//  CreateNewItemViewController.m
//  Superlista
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateNewItemViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CreateNewItemViewController ()

@end

@implementation CreateNewItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.units = @[@"kilograms",@"grams",@"hours",@"minutes", @"quantity"];
        self.quantities = @[@"0",@"1",@"2",@"3",@"4", @"5",@"6",@"7",@"8",@"9"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Add Item";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *saveList = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem: UIBarButtonSystemItemDone
                                 target:self
                                 action:@selector(saveListButtonTap:)];
    
    [[self navigationItem] setRightBarButtonItem:saveList];
    
    UITextView *itemName = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, self.view.frame.size.width-20, 60)];
    [itemName setFont:[UIFont fontWithName:@"Verdana" size:25]];
    itemName.layer.cornerRadius=8.0f;
    itemName.layer.masksToBounds=YES;
    itemName.layer.borderColor=[[UIColor grayColor]CGColor];
    itemName.layer.borderWidth= 1.2f;
    [self.view addSubview: itemName];
    
    CGRect frame = self.view.frame;
    frame.origin.y=200;

    UIPickerView *unitsPickers = [[UIPickerView alloc] initWithFrame:frame];
    unitsPickers.showsSelectionIndicator = YES;
    [unitsPickers setDataSource:self];
    [unitsPickers setDelegate:self];
    [self.view addSubview: unitsPickers];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) saveListButtonTap:(UIBarButtonItem *)sender
{
    
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return self.units.count;
    }else{
        return self.quantities.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        return self.units[row];
    }else{
        return self.quantities[row];
    }
}

//PickerViewController.m
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
}

@end
