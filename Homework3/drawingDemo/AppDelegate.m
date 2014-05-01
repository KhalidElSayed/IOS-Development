//
//  AppDelegate.m
//  drawingDemo
//
//  Created by David Rowland on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MyDrawingView.h"


@implementation AppDelegate

@synthesize window = _window;
@synthesize myView;


- (void)dealloc
{
  [_window release];
  [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
  // Override point for customization after application launch.

  //"Modern" apps will have a root view controller for the window like this,
  //[self.window setRootViewController:someViewController];
  //Often it will be a navigation controller or tab controller that will govern all
  //the other view controllers in the app.
  //The initial window and view controller will often be defined in
  //a storyboard so the initialization is automatic and needs little code here.
  
  //Here we dispense with that and just show how drawing is done in a UIView.
  
  CGRect frame = [self.window frame];
  myView = [[MyDrawingView alloc] initWithFrame:frame];
  [self.window addSubview:myView];
  [myView release];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  /*
   Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
   */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  /*
   Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
   If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
   */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  /*
   Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
   */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  /*
   Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
   */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  /*
   Called when the application is about to terminate.
   Save data if appropriate.
   See also applicationDidEnterBackground:.
   */
}

@end
