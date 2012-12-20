//
//  CreateNewItemViewController.m
//  Superlista
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateNewItemViewController.h"

@interface CreateNewItemViewController ()

@end

@implementation CreateNewItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) saveListButtonTap:(UIBarButtonItem *)sender
{
    
}

@end
