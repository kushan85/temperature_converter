//
//  NavViewController.m
//  TemperatureConverter
//
//  Created by Kushan Shah on 1/20/14.
//  Copyright (c) 2014 Kushan Shah. All rights reserved.
//

#import "NavViewController.h"
#import "F2CViewController.h"
#import "C2FViewController.h"

@interface NavViewController ()

- (void)segmentAction:(id)sender;

@end

@implementation NavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSArray *itemArray = [NSArray arrayWithObjects: @"F to C", @"C to F", nil];
        UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:itemArray];
        segControl.selectedSegmentIndex = 0;
        [segControl addTarget:self action:@selector(segmentAction:)  forControlEvents:UIControlEventValueChanged];
        UIBarButtonItem *segmentBarItem = [[UIBarButtonItem alloc] initWithCustomView: segControl];
        self.navigationItem.rightBarButtonItem = segmentBarItem;
        self.title = @"Temperature";
        
        F2CViewController *f2cController = [[F2CViewController alloc] init];
        C2FViewController *c2fController = [[C2FViewController alloc] init];
        
        self.viewControllers = [NSArray arrayWithObjects:f2cController, c2fController, nil];
        self.currentController = f2cController;
        
        [self.view addSubview:f2cController.view];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) segmentAction:(id)sender {
    UISegmentedControl *segmentControl = sender;
    
    UIViewController *selectedView=nil;
    
    
    if([segmentControl selectedSegmentIndex] == 0) {
        selectedView= [self.viewControllers objectAtIndex:0];
        
    } else {
        selectedView= [self.viewControllers objectAtIndex:1];
    }
    
    [self.currentController.view removeFromSuperview];
    self.currentController = selectedView;
    [self.view addSubview:selectedView.view];
}

@end
