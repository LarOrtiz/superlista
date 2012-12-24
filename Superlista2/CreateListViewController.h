//
//  CreateListViewController.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"
#import "ListProvider.h"

@interface CreateListViewController : UITableViewController <UITextFieldDelegate>

@property (strong,nonatomic) ListProvider * listProvider;
@property (strong, nonatomic) List * list;
- (IBAction)createItem:(UIButton *)sender;
- (IBAction)createList:(UIBarButtonItem *)sender;

@end
