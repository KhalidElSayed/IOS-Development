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




@property (strong, nonatomic) BLE *ble;


@end
