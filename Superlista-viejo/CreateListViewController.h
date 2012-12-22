//
//  CreateListViewController.h
//  Superlista
//
//  Created by Alfredo Scoppa on 12/19/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray *listItems;
@property (strong, nonatomic) UITableView * tableView;
@end
