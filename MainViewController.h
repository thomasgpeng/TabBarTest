//
//  MainViewController.h
//  TabBarTest
//
//  Created by Michael Ziray on 1/14/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "ViewTwoController.h"
@class ViewOneController;

@interface MainViewController : UIViewController {
	UITabBarController *tabbarController;
	IBOutlet UIWindow *mainWindow;
	
	ViewOneController *viewOne;
}


@end
