//
//  UCDAboutEULAViewController.m
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import "UCDAboutEULAViewController.h"

@interface UCDAboutEULAViewController ()

@end

@implementation UCDAboutEULAViewController
@synthesize delegate;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeAbout:(id)sender {
    [self.delegate closeForm];
}
@end
