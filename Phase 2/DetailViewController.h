//
//  DetailViewController.h
//  Phase 2
//
//  Created by Christian Fransson on 11/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *titleOut;
@property (weak, nonatomic) IBOutlet UILabel *authorOut;
@property (weak, nonatomic) IBOutlet UILabel *isbnOut;
@property (weak, nonatomic) IBOutlet UILabel *priceOut;
@property (weak, nonatomic) IBOutlet UILabel *courseOut;



@end
