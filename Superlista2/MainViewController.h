//
//  MainViewController.h
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListProvider.h"

@interface MainViewController : UITableViewController
{
    NSMutableArray * _lists;
    List * _currentList;
}

- (IBAction)createNewList:(UIBarButtonItem *)sender;


@end
