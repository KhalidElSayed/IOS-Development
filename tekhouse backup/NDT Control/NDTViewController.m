//
//  NDTViewController.m
//  NDT Control
//
//  Created by rsardal on 3/14/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "NDTViewController.h"

@interface NDTViewController ()

@end

@implementation NDTViewController

@synthesize ble;
@synthesize connectButton;
@synthesize onButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    on = NO;
    
    ble = [[BLE alloc] init];
    [ble controlSetup];
    ble.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void) bleDidConnect
{
    NSLog(@"->Connected");
    onButton.enabled = true;
    /*
     
     [indConnecting stopAnimating];
     
     lblAnalogIn.enabled = true;
     
     swDigitalIn.enabled = true;
     swAnalogIn.enabled = true;
     sldPWM.enabled = true;
     sldServo.enabled = true;
     
     swDigitalOut.on = false;
     swDigitalIn.on = false;
     swAnalogIn.on = false;
     sldPWM.value = 0;
     sldServo.value = 0;
     
     */
    
    // send reset
    UInt8 buf[] = {0x04, 0x00, 0x00};
    NSData *data = [[NSData alloc] initWithBytes:buf length:3];
    [ble write:data];
    
    // Schedule to read RSSI every 1 sec.
    //rssiTimer = [NSTimer scheduledTimerWithTimeInterval:(float)1.0 target:self selector:@selector(readRSSITimer:) userInfo:nil repeats:YES];
}



-(void) bleDidReceiveData:(unsigned char *)data length:(int)length
{
    NSLog(@"Length: %d", length);
    
    // parse data, all commands are in 3-byte
    for (int i = 0; i < length; i+=3)
    {
        NSLog(@"0x%02X, 0x%02X, 0x%02X", data[i], data[i+1], data[i+2]);
        
        if (data[i] == 0x0A)
        {
            /*
             if (data[i+1] == 0x01)
             //swDigitalIn.on = true;
             else
             //swDigitalIn.on = false;
             */
        }
        else if (data[i] == 0x0B)
        {
            UInt16 Value;
            
            Value = data[i+2] | data[i+1] << 8;
            //lblAnalogIn.text = [NSString stringWithFormat:@"%d", Value];
        }
    }
}

#pragma mark - Actions


- (IBAction)onButtonPressed:(id)sender {
    UInt8 buf[3] = {0x01, 0x00, 0x00};
    
    if (on)
        buf[1] = 0x01;
    else
        buf[1] = 0x00;
    
    NSData *data = [[NSData alloc] initWithBytes:buf length:3];
    [ble write:data];
    on = !on;
}

-(IBAction)sendAnalogIn:(id)sender
{
    UInt8 buf[3] = {0xA0, 0x00, 0x00};
    
    if (on)
        buf[1] = 0x01;
    else
        buf[1] = 0x00;
    
    NSData *data = [[NSData alloc] initWithBytes:buf length:3];
    [ble write:data];
}


- (IBAction)connectButton:(id)sender {
    if (ble.activePeripheral)
        if(ble.activePeripheral.state == CBPeripheralStateConnected)
        {
            [[ble CM] cancelPeripheralConnection:[ble activePeripheral]];
            [connectButton setTitle:@"C" forState:UIControlStateNormal];
            return;
        }
    
    if (ble.peripherals)
        ble.peripherals = nil;
    
    [connectButton setEnabled:false];
    [ble findBLEPeripherals:2];
    
    [NSTimer scheduledTimerWithTimeInterval:(float)2.0 target:self selector:@selector(connectionTimer:) userInfo:nil repeats:NO];
    
}

-(void) connectionTimer:(NSTimer *)timer
{
    [connectButton setEnabled:true];
    [connectButton setTitle:@"D" forState:UIControlStateNormal];
    
    if (ble.peripherals.count > 0)
    {
        [ble connectPeripheral:[ble.peripherals objectAtIndex:0]];
    }
    else
    {
        [connectButton setTitle:@"C" forState:UIControlStateNormal];
    }
}



@end
