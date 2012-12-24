//
//  CreateListViewController.m
//  Superlista2
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateListViewController.h"
#import "CreateItemViewController.h"
#import "ListNameCell.h"

@interface CreateListViewController ()
@end

@implementation CreateListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listProvider = [[ListProvider alloc] init];
    
    if (self.list == nil) {
        self.list = [[List alloc] init: [self.listProvider nextID] withTitle:@""];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }else{
        return self.list.items.count+1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"editableCell"];
           }else{
        if (indexPath.row == self.list.items.count) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"lastCell"];
        }else{
            cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
        }
    }
    
    if(cell == nil) {
        if(indexPath.section == 0){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"editableCell"];
        }else{
            if (indexPath.row == self.list.items.count) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"lastCell"];
            }else{
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
            }
        }
    }
    
    if (indexPath.section == 0) {
        ListNameCell * nameCell = [tableView dequeueReusableCellWithIdentifier:@"editableCell"];
        nameCell.listName.text = self.list.title;
    }else{
        if (indexPath.row != self.list.items.count) {
            ListItem * item = self.list.items[indexPath.row];
            cell.textLabel.text = item.title;
            cell.detailTextLabel.text = [item description];
        }
    }
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString: @"pushFromCreateListToCreateItem"]) {
        CreateItemViewController  * createItemVC = [segue destinationViewController];
        createItemVC.list = self.list;
    }
}

- (IBAction)createItem:(UIButton *)sender {
    [self performSegueWithIdentifier:@"pushFromCreateListToCreateItem" sender:self.view];
}

- (IBAction)createList:(UIBarButtonItem *)sender {
    [self.listProvider insert: self.list];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.list.title = textField.text;
}

@end
