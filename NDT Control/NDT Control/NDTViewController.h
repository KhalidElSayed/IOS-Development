//
//  NDTViewController.h
//  NDT Control
//
//  Created by rsardal on 3/14/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLE.h"

@interface NDTViewController : UIViewController <BLEDelegate> {
    
    BOOL on;
}
@property (weak, nonatomic) IBOutlet UIButton *onButton;
@property (weak, nonatomic) IBOutlet UIButton *connectButton;

@property (strong, nonatomic) IBOutlet UIImageView *welcomeGrayLogo;

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;

@property (strong, nonatomic) IBOutlet UIImageView *colorLogo;

@property (strong, nonatomic) IBOutlet UILabel *toLabel;

@property (strong, nonatomic) IBOutlet UIImageView *textLogo;

@property (strong, nonatomic) BLE *ble;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
