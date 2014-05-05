//
//  internalViewsAppDelegate.h
//  internalViews
//
//  Created by David Rowland on 3/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface internalViewsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WebViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WebViewController *viewController;

@end

