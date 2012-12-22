//
//  CreateNewItemViewController.h
//  Superlista
//
//  Created by Alfredo Scoppa on 12/20/12.
//  Copyright (c) 2012 Alfredo Scoppa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateNewItemViewController : UIViewController <UIPickerViewDataSource , UIPickerViewDelegate>
@property (strong, nonatomic) NSArray *units;
@property (strong, nonatomic) NSArray *quantities;

@end
