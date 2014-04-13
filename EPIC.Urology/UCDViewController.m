//
//  UCDViewController.m
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import "UCDViewController.h"


@interface UCDViewController ()

@end

@implementation UCDViewController
@synthesize about_EPIC;
@synthesize about_EULA;
@synthesize about_UCD;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.about_UCD = [[UCDAboutUCDViewController alloc] initWithNibName:@"UCDAboutUCDViewController" bundle:nil];
    self.about_UCD.delegate = self;
    
    self.about_EPIC = [[UCDAboutEPICViewController alloc] initWithNibName:@"UCDAboutEPICViewController" bundle:nil];
    self.about_EPIC.delegate = self;

    self.about_EULA = [[UCDAboutEULAViewController alloc] initWithNibName:@"UCDAboutEULAViewController" bundle:nil];
    self.about_EULA.delegate = self;


    
    self.EPIC26_Short = [[UCD_EPIC26_ShortViewController alloc] initWithNibName:@"UCD_EPIC26_ShortViewController" bundle:nil];
    
    self.EPIC26_Short.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)closeForm {
    [self.EPIC26_Short dismissViewControllerAnimated:YES completion:nil];
    self.EPIC26_Short = nil;
    self.EPIC26_Short = [[UCD_EPIC26_ShortViewController alloc] initWithNibName:@"UCD_EPIC26_ShortViewController" bundle:nil];
    self.EPIC26_Short.delegate = self;
    
    [_pop_aboutUCD dismissPopoverAnimated:YES];
    [_pop_aboutEPIC dismissPopoverAnimated:YES];
    [_pop_aboutEULA dismissPopoverAnimated:YES];
    
}

- (IBAction)act_mainViewNavigation:(id)sender {
    /*
     act_mainViewNavigation - used to handle the 
     interaction between the user and the main forms of navugation for this
     applications.
     
     0 - EULA
     1 - About the Survey
     2 - About the Department
     3 - Start the Short Form
     4 - Start the Sexual Assessment Form
     
     */
    
    UIButton *button = (UIButton*)sender;
    int buttonTag = [button tag];
    
    switch (buttonTag) {
        case 0: // EULA - Popover
            
            _pop_aboutEULA = [[UIPopoverController alloc] initWithContentViewController:about_EULA];
            [_pop_aboutEULA setPopoverContentSize:about_EULA.view.frame.size];
            [_pop_aboutEULA presentPopoverFromRect:CGRectMake(150, 300, 460, 200) inView:self.view permittedArrowDirections:0 animated:NO];
            _pop_aboutEULA.delegate = self;
            
            break;
        case 1: // About Epic 26 - Popover
            
            _pop_aboutEPIC = [[UIPopoverController alloc] initWithContentViewController:about_EPIC];
            [_pop_aboutEPIC setPopoverContentSize:about_EPIC.view.frame.size];
            [_pop_aboutEPIC presentPopoverFromRect:CGRectMake(150, 300, 460, 200) inView:self.view permittedArrowDirections:0 animated:NO];
            _pop_aboutEPIC.delegate = self;
            
            break;
        case 2: // About UCD Urology - Popover
            
            _pop_aboutUCD = [[UIPopoverController alloc] initWithContentViewController:about_UCD];
            [_pop_aboutUCD setPopoverContentSize:about_UCD.view.frame.size];
            [_pop_aboutUCD presentPopoverFromRect:CGRectMake(150, 300, 460, 200) inView:self.view permittedArrowDirections:0 animated:NO];
            _pop_aboutUCD.delegate = self;
            
            break;
        case 3: // Start Epic 26 Short Form - New View
            
            [self.EPIC26_Short configureForm: 1 ]; // this configures the short form
            // Configure the form code so that it
            // loads the appropriate form
            
            self.EPIC26_Short.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:self.EPIC26_Short animated:YES completion:nil];
            

            break;
        case 4: // Start Epis 26 Secual Assessment - New View
            [self.EPIC26_Short configureForm: 2];
            self.EPIC26_Short.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:self.EPIC26_Short animated:YES completion:nil];

            break;
            
        default:
            break;
    }
    
    return;
}
@end
