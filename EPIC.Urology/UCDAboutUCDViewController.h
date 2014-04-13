//
//  UCDAboutUCDViewController.h
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UCD_about <NSObject>
-(void)closeForm;
@end

@interface UCDAboutUCDViewController : UIViewController

@property (nonatomic, assign) id<UCD_about> delegate;

- (IBAction)act_closeSelf:(id)sender;

@end
