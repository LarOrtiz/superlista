//
//  SuperlistaAppDelegate.m
//  Superlista
//
//  Created by Alfredo Scoppa on 12/19/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import "SuperlistaAppDelegate.h"

@implementation SuperlistaAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.listsTableViewController = [[ListsTableViewController alloc] init];
    
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:self.listsTableViewController];
    
    [self.window makeKeyAndVisible];
    return YES;
}


@end
