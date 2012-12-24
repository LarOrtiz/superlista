//
//  MainViewController.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "MainViewController.h"
#import "PendingItemsViewController.h"
#import "DoneItemsViewController.h"

@interface MainViewController ()
@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ListProvider * provider = [[ListProvider alloc] init];
    _lists = [[NSMutableArray alloc] init];
    _lists = provider.getAll;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    List * list = _lists[indexPath.row];
    cell.textLabel.text = list.title;
    return cell;

}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{    
    if ([segue.identifier isEqualToString: @"pushFromLists"]) {
        UITabBarController  * tabVC = [segue destinationViewController];
        PendingItemsViewController * pendingVC = tabVC.viewControllers[0];
        DoneItemsViewController * doneVC = tabVC.viewControllers[1];
        pendingVC.list = _currentList;
        doneVC.list = _currentList;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _lists.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _currentList = _lists[indexPath.row];
    [self performSegueWithIdentifier:@"pushFromLists" sender:self.view];
}

- (IBAction)createNewList:(UIBarButtonItem *)sender {
    NSLog(@"HELLOOO");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
