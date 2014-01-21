//
//  C2FViewController.m
//  TemperatureConverter
//
//  Created by Kushan Shah on 1/20/14.
//  Copyright (c) 2014 Kushan Shah. All rights reserved.
//

#import "C2FViewController.h"

@interface C2FViewController ()
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (weak, nonatomic) IBOutlet UILabel *fahnLabel;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
- (IBAction)onEditBegin:(id)sender;

- (IBAction)onTap:(id)sender;
- (IBAction)onCalculate:(id)sender;
@end

@implementation C2FViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    self.celsiusTextField.text = nil;
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self onCalculate:nil];
}

- (IBAction)onCalculate:(id)sender {
    [self.view endEditing:YES];
    
    float celsiusAmount = [self.celsiusTextField.text floatValue];
    float fahnAmount = (celsiusAmount * (9.0/5.0)) + 32.0;
    self.fahnLabel.text = [[NSString alloc] initWithFormat:@"%0.2f", fahnAmount];
    
    
}

@end
