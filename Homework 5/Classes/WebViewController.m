//
//  internalViewsViewController.m
//  internalViews
//
//  Created by David Rowland on 3/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

@synthesize webView;
@synthesize backButton;
@synthesize forwardButton;

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
  
  //for web views, we must #import <UIKit/UIKit.h>,
  //reference the UIKit framework,
  CGRect screenRect = [[UIScreen mainScreen] applicationFrame];
  webView = [[UIWebView alloc] initWithFrame:screenRect];
  [webView setBackgroundColor:[UIColor clearColor]];
  [webView setDelegate:self];
  [webView setScalesPageToFit:YES];
  [self.view addSubview:webView];
  [webView release];
  
  NSString * urlString = @"http://apple.com";
  NSURL *url = [NSURL URLWithString:urlString];
  
  //NSString *path = [[NSBundle mainBundle] pathForResource:@"testFile.pdf" ofType:nil];
  //NSURL *url = [NSURL fileURLWithPath:path];
  
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  [webView loadRequest:request];
  
  //Add buttons for forward and back web navigation
  CGRect frame = CGRectMake(12, 380, 40, 30);
  forwardButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [forwardButton setFrame:frame];
  [forwardButton setEnabled:NO];
  [forwardButton setTitle:@"F" forState:UIControlStateNormal];
  //    [forwardButton addTarget:self action:@selector(forwardAction:) forControlEvents:UIControlEventTouchUpInside ];
  [self.view addSubview:forwardButton];
  //need to create the action method and a button for back.
}


#pragma mark webView delegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
  //test the state of [webView canGoForward] and canGoBack
  //and set [button setEnabled:NO];   YES or NO accordingly.
  //The button action methods should call webView methods goBack or goForward.
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
  
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

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
