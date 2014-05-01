implementation FinDayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.leftTextField.delegate = self;
    self.rightTextField.delegate = self; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)leftButtonPressed:(id)sender {
    _displayLabel.text = _leftTextField.text;
}


- (IBAction)rightButtonPressed:(id)sender {
    _displayLabel.text = _rightTextField.text;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

@end
