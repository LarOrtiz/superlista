//
//  SuperlistaAppDelegate.h
//  Superlista
//
//  Created by Alfredo Scoppa on 12/19/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListsTableViewController.h"

@class ListsViewController;

@interface SuperlistaAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ListsTableViewController *listsTableViewController;

@end
