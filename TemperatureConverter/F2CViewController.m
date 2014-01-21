//
//  F2CViewController.m
//  TemperatureConverter
//
//  Created by Kushan Shah on 1/20/14.
//  Copyright (c) 2014 Kushan Shah. All rights reserved.
//

#import "F2CViewController.h"

@interface F2CViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fahnTextField;
@property (weak, nonatomic) IBOutlet UILabel *celsiusLabel;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
- (IBAction)onEditBegin:(id)sender;

- (IBAction)onTap:(id)sender;
- (IBAction)onCalculate:(id)sender;

@end

@implementation F2CViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.convertButton setBackgroundColor:[UIColor greenColor]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onEditBegin:(id)sender {
    self.fahnTextField.text = nil;
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self onCalculate:nil];
}

- (IBAction)onCalculate:(id)sender {
    [self.view endEditing:YES];
    
    float fahnAmount = [self.fahnTextField.text floatValue];
    float celsiusAmount = (5.0/9.0) * (fahnAmount - 32.0);
    self.celsiusLabel.text = [[NSString alloc] initWithFormat:@"%0.2f", celsiusAmount];
}


@end
