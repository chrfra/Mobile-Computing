//
//  EditViewController_EditViewController.h
//  Phase 2
//
//  Created by Christian Fransson on 14/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "EditViewController.m"

@interface EditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *courseField;
@property (weak, nonatomic) IBOutlet UITextField *IDBNField;
@property (weak, nonatomic) IBOutlet UITextField *priceField;

@end
