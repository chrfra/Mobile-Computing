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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIBarButtonItem *)sender {
    
    //If title has been entered and  if the done button was pressed (done button has tag 1 ( set in storyboard )
    //Edit book and allow seque
    if ( _titleField.text.length>0 && sender.tag == 1 ){
        _book = [[Book alloc] init];
        //Read properties of book from text fields into detailItem (the book in the book manager
        _book.title = _titleField.text;
        _book.author = _authorField.text;
        _book.course = _courseField.text;
        _book.isbn =  _ISBNField.text;
        _book.price = [_priceField.text integerValue];
        
        //Allow seque to be performed
        return true;
    }
    //Cancel button pressed (tag = 0), don't create book & allow seque
    else if (sender.tag == 0){
        return true;
    }
    //Done pressed but no title entered
    else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Book must have a title." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        
        return false;
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if(_book != nil){
        //Send the current book to edit view
        [[segue destinationViewController] addBook: _book];
    }
}

@end
