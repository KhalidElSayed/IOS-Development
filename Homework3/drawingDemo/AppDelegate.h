//
//  AppDelegate.h
//  drawingDemo
//
//  Created by David Rowland on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyDrawingView.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MyDrawingView *myView;

@end
