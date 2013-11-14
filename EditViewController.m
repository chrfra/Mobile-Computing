//
//  EditViewController.m
//  Phase 2
//
//  Created by Christian Fransson on 14/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import "EditViewController.h"
#import "MasterViewController.h"
#import "Book.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneBtn:(id)sender {
}

//Interrupt changing view if no title has been entered, otherwise edit book
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ( _titleField.text.length>0 ){
        /*
        Book *b = (Book *)_detailItem;
        b.title = @"HEJSAN";
        NSLog(@"BOOK TITLE: %@",b.title);
        */
        return true;
    }
    else{return false;}
}

-(void) viewWillAppear:(BOOL)animated{
    [self configureView];
}

// Save the details of the current book for displaying in the text boxes later.
//cannot set the text for the text fields here since view is not loaded yet when we get here
- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
    }
}

// Populates the text fields with the information from the book to be edited.
- (void)configureView
{
    if (self.detailItem) {
        self.titleField.text = [self.detailItem title];
        self.authorField.text = [self.detailItem author];
        self.courseField.text = [self.detailItem course];
        self.ISBNField.text = [self.detailItem isbn];
        self.priceField.text = [NSString stringWithFormat:@"%i",[self.detailItem price]];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Send the current book to edit view
    [[segue destinationViewController] setDetailItem: self.detailItem];
}

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
 
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem: [_manager bookAtIndex:indexPath.row]];
    }

}
*/
/*
- (void)perform
{
    // Add your own animation code here.
    
    [[self sourceViewController] presentModalViewController:[self destinationViewController] animated:NO];
}


MasterViewController masterView = [MasterViewController alloc]

PushViewController *oView = [[PushViewController alloc]         initWithNibName:@”PushViewController” bundle:nil];

oView.title = @”The Other View”;
[self.navigationController pushViewController:oView animated:YES];
[oView release];
*/


@end
