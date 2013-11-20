//
//  SummaryViewController.h
//  Summary
//
//  Created by Satu Peltola on 04/11/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleBookManager.h"

@interface SummaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totalCost;
@property (weak, nonatomic) IBOutlet UILabel *bookAmount;
@property (weak, nonatomic) IBOutlet UILabel *expensive;
@property (weak, nonatomic) IBOutlet UILabel *leastExpensive;
@property (weak, nonatomic) IBOutlet UILabel *average;


@property (strong) SimpleBookManager *manager;


- (void)changeCost:(int)cost;

@end
