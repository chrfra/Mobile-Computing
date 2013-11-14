//
//  MasterViewController.h
//  Phase 2
//
//  Created by Christian Fransson on 11/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleBookManager.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) SimpleBookManager *manager;

@end
