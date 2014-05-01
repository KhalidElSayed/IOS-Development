//
//  RRSViewController.m
//  Homework 2 Part 2
//
//  Created by Ravin Sardal on 4/13/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "RRSViewController.h"

@interface RRSViewController ()

@end

@implementation RRSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//myButton
- (IBAction)buttonHit:(id)sender {
     [self.myButton setTitle:@"HIT" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
