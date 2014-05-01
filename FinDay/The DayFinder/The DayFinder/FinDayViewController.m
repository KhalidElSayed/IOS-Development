//
//  FinDayViewController.m
//  The DayFinder
//
//  Created by Ravin Sardal on 1/20/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "FinDayViewController.h"

@interface FinDayViewController ()


@property (weak, nonatomic) IBOutlet UITextField *theMonth;
@property (weak, nonatomic) IBOutlet UITextField *theDay;
@property (weak, nonatomic) IBOutlet UITextField *theYear;
@property (weak, nonatomic) IBOutlet UILabel *displayDay;


- (IBAction)findDay:(id)sender;


@end

@implementation FinDayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)findDay:(id)sender {
}
@end
