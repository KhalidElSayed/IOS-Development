//
//  DrawingViewController.m
//  navDemo
//
//

#import "DrawingViewController.h"


@implementation DrawingViewController

//Synthesize the drawing view.
@synthesize window = _window;
@synthesize myView;




- (void)dealloc
{
    [super dealloc];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Drawing VC";

    //Init your view and add as a subview
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
    

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
							
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
  
}


@end
