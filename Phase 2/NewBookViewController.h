//
//  NewBookViewController.h
//  Phase 2
//
//  Created by Christian Fransson on 15/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface NewBookViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *courseField;
@property (weak, nonatomic) IBOutlet UITextField *ISBNField;
@property (weak, nonatomic) IBOutlet UITextField *priceField;

//The newly created book that is sent to the unwind funciton in masterviewcontroller
@property (strong, nonatomic) Book *book;

@end
