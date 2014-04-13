//
//  UCDViewController.h
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UCD_EPIC26_ShortViewController.h"
#import "UCDAboutUCDViewController.h"
#import "UCDAboutEPICViewController.h"
#import "UCDAboutEULAViewController.h"

@interface UCDViewController : UIViewController <UIPopoverControllerDelegate, UCD_EPIC26_Form, UCD_about, EPIC_about, PRIVACY_about >
{
}

@property (strong, nonatomic) UIPopoverController *pop_aboutUCD;
@property (strong, nonatomic) UIPopoverController *pop_aboutEPIC;
@property (strong, nonatomic) UIPopoverController *pop_aboutEULA;

@property (strong, nonatomic) UCD_EPIC26_ShortViewController *EPIC26_Short;
@property (strong, nonatomic) UCDAboutUCDViewController *about_UCD;
@property (strong, nonatomic) UCDAboutEPICViewController *about_EPIC;
@property (strong, nonatomic) UCDAboutEULAViewController *about_EULA;


- (IBAction)act_mainViewNavigation:(id)sender;

@end
