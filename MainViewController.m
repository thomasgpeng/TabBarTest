//
//  MainViewController.m
//  TabBarTest
//
//  Created by Michael Ziray on 1/14/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

#import "ViewOneController.h"

@implementation MainViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
	[super viewDidLoad];
	
	// This is where we load in our first view. Simply changing this code will allow
	//  us to change which view is presented first. You can have logic that determines
	//  if ViewOne should be loaded, or another view first.
	viewOne = [[ViewOneController alloc] initWithNibName: @"ViewOneController" bundle:nil];
	viewOne.mainViewController = self;
	
	[mainWindow addSubview: viewOne.view];
}


// Function to load and display our UITabBarController programmatically
-(void)showTabBar
{
	// Remove the previous view. In this case, viewOne
	[self.view removeFromSuperview];
	[viewOne release];
	
	// Create and load the tab bar with View Two as our main view within the UITabBar
	tabbarController = [[UITabBarController alloc] init];
	[tabbarController setHidesBottomBarWhenPushed: YES];
	
	ViewTwoController *viewTwo = [[ViewTwoController alloc] init];
	viewTwo.title = @"View Two";
	viewTwo.tabBarItem.image = [UIImage imageNamed: @"Glass.png"];
	[tabbarController setViewControllers: [NSArray arrayWithObjects: viewTwo, nil]];
	
	// UITabBarControllers need to be the root view of the window.
	// Even though MainViewController is controlling the tab bar, adding it to the
	//  top of the window's view stack satisfies this requirement.
	[mainWindow addSubview: tabbarController.view];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;// (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);// UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
