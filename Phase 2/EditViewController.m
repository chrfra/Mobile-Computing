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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIButton *)sender {

    //If title has been entered and  if the done button was pressed (done button is a UIButton, cancel is a UIBarButtonItem)
    //Edit book and allow seque
    if ( _titleField.text.length>0 && ([sender class] == [UIButton class]) ){
        Book *book =((Book *)_detailItem);
        //Read properties of book from text fields into detailItem (the book in the book manager
        book.title = _titleField.text;
        book.author = _authorField.text;
        book.course = _courseField.text;
        book.isbn =  _ISBNField.text;
        book.price = [_priceField.text integerValue];
        
        //Allow segue to be performed
        return true;
    }
    //Cancel button pressed, don't create book & allow seque
    else if ([sender class] != [UIButton class]){
        return true;
    }
    //Done pressed but no title entered
    else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Book must have a title." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        
        return false;
    }
}

-(void) viewWillAppear:(BOOL)animated{
    //[super viewWillAppear:animated];
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

@end
