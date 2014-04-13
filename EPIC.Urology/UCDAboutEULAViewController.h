//
//  UCDAboutEULAViewController.h
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PRIVACY_about <NSObject>
-(void)closeForm;
@end

@interface UCDAboutEULAViewController : UIViewController

@property (nonatomic, assign) id<PRIVACY_about> delegate;

- (IBAction)closeAbout:(id)sender;
@end
