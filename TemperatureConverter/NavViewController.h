//
//  NavViewController.h
//  TemperatureConverter
//
//  Created by Kushan Shah on 1/20/14.
//  Copyright (c) 2014 Kushan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavViewController : UIViewController

@property (strong, nonatomic) NSArray *viewControllers;
@property (strong, nonatomic) UIViewController *currentController;
@end
