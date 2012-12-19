//
//  CreateListViewController.m
//  Superlista
//
//  Created by Alfredo Scoppa on 12/19/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "CreateListViewController.h"
#import <QuartzCore/QuartzCore.h>

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
    
    
    CGRect backgroundFrame = self.view.frame;
    backgroundFrame.origin.y=0;
    backgroundFrame.size.height=60;
    UIImageView * background = [[UIImageView alloc] initWithFrame:backgroundFrame];
    UIImage *backgroundImage = [UIImage imageNamed:@"background"];
    [background setContentMode:UIViewContentModeScaleToFill];
    background.image = backgroundImage;
    [self.view addSubview:background];
    
    
    UITextView *listName = [[UITextView alloc] initWithFrame: CGRectMake(10,20,self.view.frame.size.width-20,40)];
    listName.font = [UIFont fontWithName:@"Helvetica" size:14];
    listName.text = @"Your list name";
    [listName.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [listName.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [listName.layer setBorderWidth: .8];
    [listName.layer setCornerRadius:10.0f];
    [listName.layer setMasksToBounds:YES];
    
    [self.view addSubview: listName];
    
    self.tableView = [[UITableView alloc]
                      initWithFrame:CGRectMake(0,60,self.view.frame.size.width,self.view.frame.size.height-30)
                      style:UITableViewStyleGrouped];
    
    
    UIImageView * background2 = [[UIImageView alloc] initWithFrame:backgroundFrame];
    UIImage *backgroundImage2 = [UIImage imageNamed:@"background"];
    [background setContentMode:UIViewContentModeScaleToFill];
    background2.image = backgroundImage2;
    self.tableView.backgroundView = background2;
    
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
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = self.listItems[indexPath.row];
    
    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
