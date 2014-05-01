//
//  DrawingViewController.h
//  navDemo
//
//

#import <UIKit/UIKit.h>
#import "MyDrawingView.h"

@interface DrawingViewController : UIViewController

//declare your drawing view
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MyDrawingView *myView;

@end
