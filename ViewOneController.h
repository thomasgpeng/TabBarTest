//
//  ViewOneController.h
//  TabBarTest
//
//  Created by Michael Ziray on 2/2/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainViewController.h"

@interface ViewOneController : UIViewController
{
	MainViewController *mainViewController;
}


-(IBAction)attemptLogin; // action to be performed when login button is touched


@property(nonatomic, retain) MainViewController *mainViewController;

@end
