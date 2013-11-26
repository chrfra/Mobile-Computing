//
//  NewBookViewController.m
//  Phase 2
//
//  Created by Christian Fransson on 15/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import "NewBookViewController.h"
#import "Book.h"
#import "MasterViewController.h"

@interface NewBookViewController ()

@end

@implementation NewBookViewController

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

//Interrupt changing view if no title has been entered, otherwise edit book
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ( _titleField.text.length>0 ){

        //Allow seque to be performed
        return true;
    }
    else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Book must have a title." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        
        return false;}
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    Book *book = [[Book alloc] init];
    //Read properties of book from text fields into detailItem (the book in the book manager
    book.title = _titleField.text;
    book.author = _authorField.text;
    book.course = _courseField.text;
    book.isbn =  _ISBNField.text;
    book.price = [_priceField.text integerValue];
    
    //Send the current book to edit view
    [[segue destinationViewController] addBook: book];
}

@end
