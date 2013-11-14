//
//  AppDelegate.h
//  Phase 2
//
//  Created by Christian Fransson on 11/11/13.
//  Copyright (c) 2013 Christian Fransson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleBookManager.h"
#import "MasterViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SimpleBookManager *manager;
@property (strong) MasterViewController *controller;

@end
