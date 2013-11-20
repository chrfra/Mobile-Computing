//
//  SummaryViewController.m
//  Summary
//
//  Created by Satu Peltola on 04/11/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import "SummaryViewController.h"
#import "SimpleBookManager.h"


@interface SummaryViewController ()

@end

@implementation SummaryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self updateLabels];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)updateLabels{
    _manager = [SimpleBookManager sharedSimpleBookManager];
    if(_manager != nil){
        _totalCost.text = [NSString stringWithFormat:@"%i",[_manager totalCost] ];
        _bookAmount.text = [NSString stringWithFormat:@"%i",[_manager count] ];
        _expensive.text = [NSString stringWithFormat:@"%i",[_manager maxPrice] ];
        _leastExpensive.text = [NSString stringWithFormat:@"%i",[_manager minPrice] ];
        _average.text = [NSString stringWithFormat:@"%.1f", [_manager meanPrice] ];
    }else{
        NSLog(@"Manager object is nil!");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
