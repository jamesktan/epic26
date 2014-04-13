//
//  UCD_EPIC26_ShortViewController.h
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@protocol UCD_EPIC26_Form <NSObject>
-(void)closeForm;
@end

@interface UCD_EPIC26_ShortViewController : UIViewController <NIDropDownDelegate, UIPopoverControllerDelegate> {
    
    NSMutableArray *array_of_values;
    
    int configCode;
    NIDropDown *dropDown;
    NSArray *questionArray, *buttonArray, *buttonIDs;
    NSArray *value_array;
    
    //category_ = category totals;
    int category_1, category_2, category_3, category_4, category_5;
    
    // standard_grading_array = arrays that describe the grading to be prescribed
    NSArray *standard_grading_array_1,  *standard_grading_array_2,  *standard_grading_array_3,  *standard_grading_array_4,  *standard_grading_array_5;
    
    // standard_grading_scale = dictionaries that describe the grading scale for each category
    NSDictionary *standard_grading_scale1, *standard_grading_scale2, *standard_grading_scale3, *standard_grading_scale4, *standard_grading_scale5;
    
    // standard_summary_array = arrays that describe the summary buckets questions belong to.
    NSArray *standard_summary_array_1, *standard_summary_array_2, *standard_summary_array_3, *standard_summary_array_4, *standard_summary_array_5;
}

@property (strong, nonatomic) UIPopoverController *popover_scores;
@property (strong, nonatomic) UIViewController *controller;


- (IBAction)selectClicked:(id)sender;

-(void)rel;


@property (nonatomic, assign) id<UCD_EPIC26_Form> delegate;

@property (strong, nonatomic) IBOutlet UIScrollView *scroll_form;
@property (strong, nonatomic) IBOutlet UIView *view_shortForm;
@property (strong, nonatomic) IBOutlet UIView *view_sexualAssessment;

@property (strong, nonatomic) IBOutlet UILabel *label_formTitle;


@property (strong, nonatomic) IBOutlet UIWebView *question1;
@property (strong, nonatomic) IBOutlet UIWebView *question2;
@property (strong, nonatomic) IBOutlet UIWebView *question3;
@property (strong, nonatomic) IBOutlet UIWebView *question4;
@property (strong, nonatomic) IBOutlet UIWebView *question5;
@property (strong, nonatomic) IBOutlet UIWebView *question6;
@property (strong, nonatomic) IBOutlet UIWebView *question7;
@property (strong, nonatomic) IBOutlet UIWebView *question8;
@property (strong, nonatomic) IBOutlet UIWebView *question9;
@property (strong, nonatomic) IBOutlet UIWebView *question10;
@property (strong, nonatomic) IBOutlet UIWebView *question11;
@property (strong, nonatomic) IBOutlet UIWebView *question12;
@property (strong, nonatomic) IBOutlet UIWebView *question13;




@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4a;
@property (strong, nonatomic) IBOutlet UIButton *button4b;
@property (strong, nonatomic) IBOutlet UIButton *button4c;
@property (strong, nonatomic) IBOutlet UIButton *button4d;
@property (strong, nonatomic) IBOutlet UIButton *button4e;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6a;
@property (strong, nonatomic) IBOutlet UIButton *button6b;
@property (strong, nonatomic) IBOutlet UIButton *button6c;
@property (strong, nonatomic) IBOutlet UIButton *button6d;
@property (strong, nonatomic) IBOutlet UIButton *button6e;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8a;
@property (strong, nonatomic) IBOutlet UIButton *button8b;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *button10;
@property (strong, nonatomic) IBOutlet UIButton *button11;
@property (strong, nonatomic) IBOutlet UIButton *button12;
@property (strong, nonatomic) IBOutlet UIButton *button13a;
@property (strong, nonatomic) IBOutlet UIButton *button13b;
@property (strong, nonatomic) IBOutlet UIButton *button13c;
@property (strong, nonatomic) IBOutlet UIButton *button13d;
@property (strong, nonatomic) IBOutlet UIButton *button13e;


//scores
@property (strong, nonatomic) IBOutlet UILabel *l_23;
@property (strong, nonatomic) IBOutlet UILabel *l_26;
@property (strong, nonatomic) IBOutlet UILabel *l_27;
@property (strong, nonatomic) IBOutlet UILabel *l_28;
@property (strong, nonatomic) IBOutlet UILabel *l_29;
@property (strong, nonatomic) IBOutlet UILabel *l_30;
@property (strong, nonatomic) IBOutlet UILabel *l_31;
@property (strong, nonatomic) IBOutlet UILabel *l_33;
@property (strong, nonatomic) IBOutlet UILabel *l_34;
@property (strong, nonatomic) IBOutlet UILabel *l_49;
@property (strong, nonatomic) IBOutlet UILabel *l_50;
@property (strong, nonatomic) IBOutlet UILabel *l_52;
@property (strong, nonatomic) IBOutlet UILabel *l_53;
@property (strong, nonatomic) IBOutlet UILabel *l_54;
@property (strong, nonatomic) IBOutlet UILabel *l_55;
@property (strong, nonatomic) IBOutlet UILabel *l_57;
@property (strong, nonatomic) IBOutlet UILabel *l_58;
@property (strong, nonatomic) IBOutlet UILabel *l_59;
@property (strong, nonatomic) IBOutlet UILabel *l_60;
@property (strong, nonatomic) IBOutlet UILabel *l_64;
@property (strong, nonatomic) IBOutlet UILabel *l_68;
@property (strong, nonatomic) IBOutlet UILabel *l_74;
@property (strong, nonatomic) IBOutlet UILabel *l_75;
@property (strong, nonatomic) IBOutlet UILabel *l_77;
@property (strong, nonatomic) IBOutlet UILabel *l_78;
@property (strong, nonatomic) IBOutlet UILabel *l_79;


@property (strong, nonatomic) IBOutlet UIView *view_scores;

// finals sores
@property (strong, nonatomic) IBOutlet UILabel *score_1;
@property (strong, nonatomic) IBOutlet UILabel *score_2;
@property (strong, nonatomic) IBOutlet UILabel *score_3;
@property (strong, nonatomic) IBOutlet UILabel *score_4;
@property (strong, nonatomic) IBOutlet UILabel *score_5;

//score button
@property (strong, nonatomic) IBOutlet UIButton *score_buttons;

- (IBAction)action_open_scores:(id)sender;

- (IBAction)action_scoring_details:(id)sender;

- (IBAction)action_review_questions:(id)sender;

- (IBAction)btn_backToHome:(id)sender;

- (void)configureForm:(int)configCodeVal;
@property (strong, nonatomic) IBOutlet UIImageView *dark_bg;

@end
