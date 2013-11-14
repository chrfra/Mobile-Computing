//
//  EditViewController.h
//  Phase 2
//
//  Created by Christian Fransson on 14/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController

- (IBAction)doneBtn:(id)sender;
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *courseField;
@property (weak, nonatomic) IBOutlet UITextField *ISBNField;
@property (weak, nonatomic) IBOutlet UITextField *priceField;

@end
