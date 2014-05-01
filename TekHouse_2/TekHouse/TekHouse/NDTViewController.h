//
//  TableViewController.h
//  SimpleControl
//
//  Created by Cheong on 7/11/12.
//  Copyright (c) 2012 RedBearLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLE.h"

@interface TableViewController : UITableViewController <BLEDelegate>
{
    IBOutlet UIButton *btnConnect;
    IBOutlet UISwitch *swDigitalOut;
    IBOutlet UIActivityIndicatorView *indConnecting;
}





@property (strong, nonatomic) BLE *ble;

@end
