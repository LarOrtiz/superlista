//
//  CreateListViewController.m
//  Superlista
//
//  Created by Alfredo Scoppa on 12/19/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateListViewController.h"
#import "EditableDetailCell.h"
#import "CreateNewItemViewController.h"

@interface CreateListViewController ()

@end

@implementation CreateListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.listItems = @[@"Item1",@"Item2",@"Item3"];
    self.title = @"Create List";
    
    UIBarButtonItem *saveList = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem: UIBarButtonSystemItemDone
                                   target:self
                                   action:@selector(saveListButtonTap:)];
    
    [[self navigationItem] setRightBarButtonItem:saveList];
    
    self.tableView = [[UITableView alloc]
                      initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)
                      style:UITableViewStyleGrouped];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview: self.tableView];
}

- (void) saveListButtonTap:(UIBarButtonItem *)sender
{
    
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
    if(section == 1)
        return self.listItems.count;
    else
        return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if(cell == nil) {
        //if (indexPath.section == 0) {
           // cell = [tableView dequeueReusableCellWithIdentifier:@"editableCell"];
            //cell = [[EditableDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"editableCell"];
        //}else{
            cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        //}
    }
    
    if (indexPath.section==1) {
        cell.textLabel.text = self.listItems[indexPath.row];
    }else{
    }
    
    return cell;

}


-(void)newItem:(UIButton *)sender {
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == self.listItems.count-1){
        CreateNewItemViewController * createNewItemViewController = [[CreateNewItemViewController alloc] init];
        [self.navigationController pushViewController:createNewItemViewController animated:YES];
    }
}

@end
