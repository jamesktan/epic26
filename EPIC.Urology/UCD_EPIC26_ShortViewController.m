//
//  UCD_EPIC26_ShortViewController.m
//  EPIC.Urology
//
//  Created by James Tan on 1/20/13.
//  Copyright (c) 2013 UCDavis. All rights reserved.
//

#import "UCD_EPIC26_ShortViewController.h"

#import "NIDropDown.h"
#import "QuartzCore/QuartzCore.h"

#define degreesToRadians(x) (M_PI * x / 180.0)

@interface UCD_EPIC26_ShortViewController ()

@end

@implementation UCD_EPIC26_ShortViewController

@synthesize delegate;

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

    [self changeMainForm];
}

-(void) loadURLForForm {
    //
    _controller = [[UIViewController alloc] init] ;
    _controller.view = _view_scores;

    
    // Values
    array_of_values = [[NSMutableArray alloc] init];
    
    //Setup Scores
    category_1 = 0;
    category_2 = 0;
    category_3 = 0;
    category_4 = 0;
    category_5 = 0;
    
    // Setup Containers with Question numbers
    // Grading arrays describe the different grading categories
    standard_grading_array_1 = [[NSArray alloc] initWithObjects:@"q_23", @"q_57", @"q_58", @"q_60", @"q_64", nil];
    standard_grading_array_2 = [[NSArray alloc] initWithObjects:@"q_26", @"q_59", nil];
    standard_grading_array_3 = [[NSArray alloc] initWithObjects:@"q_27", nil];
    standard_grading_array_4 = [[NSArray alloc] initWithObjects:@"q_28", @"q_29", @"q_30", @"q_31", @"q_33", @"q_49",@"q_50",
                                @"q_52", @"q_53", @"q_54", @"q_74", @"q_75", @"q_77", @"q_78", @"q_79", nil];
    standard_grading_array_5 = [[NSArray alloc] initWithObjects:@"q_34", @"q_55", @"q_68", nil];
    
    // Setup the Grading Dictionaries
    NSArray *scale1Keys = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    NSArray *scale1Objects = [[NSArray alloc] initWithObjects:[[NSNumber alloc] initWithInt:0]
                              ,[[NSNumber alloc] initWithInt:25],
                              [[NSNumber alloc] initWithInt:50],
                              [[NSNumber alloc] initWithInt:75],
                              [[NSNumber alloc] initWithInt:100], nil];
    standard_grading_scale1 = [[NSDictionary alloc] initWithObjects: scale1Objects forKeys: scale1Keys];

    NSArray *scale2Keys = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", nil];
    NSArray *scale2Objects = [[NSArray alloc] initWithObjects:[[NSNumber alloc] initWithInt:0]
                              ,[[NSNumber alloc] initWithInt:33],
                              [[NSNumber alloc] initWithInt:67],
                              [[NSNumber alloc] initWithInt:100],
                              nil];
    standard_grading_scale2 = [[NSDictionary alloc] initWithObjects: scale2Objects forKeys: scale2Keys];
                               
    NSArray *scale3Keys = [[NSArray alloc] initWithObjects:@"0", @"1", @"2", @"3", nil];
    NSArray *scale3Objects = [[NSArray alloc] initWithObjects:[[NSNumber alloc] initWithInt:100]
                              ,[[NSNumber alloc] initWithInt:67],
                              [[NSNumber alloc] initWithInt:33],
                              [[NSNumber alloc] initWithInt:0],
                              nil];
    standard_grading_scale3 = [[NSDictionary alloc] initWithObjects: scale3Objects forKeys: scale3Keys];

    NSArray *scale4Keys = [[NSArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", nil];
    NSArray *scale4Objects = [[NSArray alloc] initWithObjects:[[NSNumber alloc] initWithInt:100]
                              ,[[NSNumber alloc] initWithInt:75],
                              [[NSNumber alloc] initWithInt:50],
                             [[NSNumber alloc] initWithInt:25],
                              [[NSNumber alloc] initWithInt:0], nil];
    standard_grading_scale4 = [[NSDictionary alloc] initWithObjects: scale4Objects forKeys: scale4Keys];

    NSArray *scale5Keys = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    NSArray *scale5Objects = [[NSArray alloc] initWithObjects:[[NSNumber alloc] initWithInt:100]
                              ,[[NSNumber alloc] initWithInt:75],
                              [[NSNumber alloc] initWithInt:50],
                              [[NSNumber alloc] initWithInt:25],
                              [[NSNumber alloc] initWithInt:0], nil];
    standard_grading_scale5 = [[NSDictionary alloc] initWithObjects: scale5Objects forKeys: scale5Keys];

    
    
    // Setup Containers with Question numbers
    // Category arrays describe the different summary categories
    standard_summary_array_1 = [[NSArray alloc] initWithObjects:@"q_23", @"q_26", @"q_27", @"q_28", nil];
    standard_summary_array_2 = [[NSArray alloc] initWithObjects:@"q_29", @"q_30", @"q_31", @"q_33", nil];
    standard_summary_array_3 = [[NSArray alloc] initWithObjects:@"q_49", @"q_50", @"q_52", @"q_53", @"q_54", @"q_55", nil];
    standard_summary_array_4 = [[NSArray alloc] initWithObjects:@"q_57", @"q_58", @"q_59", @"q_60", @"q_64", @"q_68", nil];
    standard_summary_array_5 = [[NSArray alloc] initWithObjects:@"q_74", @"q_75", @"q_77", @"q_78", @"q_79", nil];

    buttonArray = [[NSArray alloc] initWithObjects:_button1, _button2, _button3, _button4a, _button4b, _button4c, _button4d, _button4e, _button5, _button6a, _button6b, _button6c,_button6d, _button6e, _button7, _button8a, _button8b, _button9, _button10, _button11, _button12, _button13a, _button13b, _button13c, _button13d, _button13e, nil];
    
    value_array = [[NSArray alloc] initWithObjects:_l_23, _l_26, _l_27, _l_28, _l_29, _l_30, _l_31, _l_33, _l_34, _l_49, _l_50, _l_52, _l_53, _l_54, _l_55, _l_57, _l_58, _l_59, _l_60, _l_64, _l_68, _l_74, _l_75, _l_77, _l_78 ,_l_79, nil];
    
    NSString *myIDs = [[NSBundle mainBundle] pathForResource:@"epic26ShortFormIDs" ofType:@"plist"];
    buttonIDs = [[NSArray alloc] initWithContentsOfFile:myIDs];

}

- (void) changeMainForm {
    if (configCode == 1) {
        NSLog(@"Loading Short Form");
        _label_formTitle.text = @"EPIC26: Short Form";
        _scroll_form.contentSize = _view_shortForm.frame.size;
        [_scroll_form addSubview:_view_shortForm];
        [self loadURLForForm];

        
    }
    if (configCode == 2) {
        NSLog(@"Loading Sexual Assessment");
        _label_formTitle.text = @"EPIC26: Sexual Assessment";
        _scroll_form.contentSize = _view_sexualAssessment.frame.size;
        [_scroll_form addSubview:_view_sexualAssessment];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_backToHome:(id)sender {
    [self.delegate closeForm];
    [_view_sexualAssessment removeFromSuperview];
    [_view_shortForm removeFromSuperview];
    [_popover_scores dismissPopoverAnimated:YES];
}

- (void)configureForm:(int)configCodeVal {
    configCode = configCodeVal;

    [self changeMainForm];

}

-(void)categorize_grading:(NSString*)question_number button:(UIButton*)the_button {
    NSLog(@"categorizing grading %@", question_number);
    NSLog(@"button value %@", the_button.titleLabel.text);
    if ([standard_grading_array_1 containsObject:question_number]) {
        NSLog(@"Question 1");
        NSString *button_value = [[the_button.titleLabel.text componentsSeparatedByString:@" - "] objectAtIndex:0];
        NSLog(@"%@", button_value);
        NSNumber * temp = [standard_grading_scale1 objectForKey:button_value]; // get button value
        NSLog(@"%d", [temp integerValue]);
        [array_of_values addObject:temp]; // store the value for later
        [self categorize_summary: question_number number: temp];
        
    }
    if ([standard_grading_array_2 containsObject:question_number]) {
        NSLog(@"Question 2");
        NSString *button_value = [[the_button.titleLabel.text componentsSeparatedByString:@" - "] objectAtIndex:0];
        NSLog(@"%@", button_value);
        NSNumber * temp = [standard_grading_scale2 objectForKey:button_value]; // get button value
        NSLog(@"%d", [temp integerValue]);

        [array_of_values addObject:temp]; // store the value for later
        [self categorize_summary: question_number number: temp];
        
    }
    if ([standard_grading_array_3 containsObject:question_number]) {
        NSLog(@"Question 3");
        NSString *button_value = [[the_button.titleLabel.text componentsSeparatedByString:@" - "] objectAtIndex:0];
        NSLog(@"%@", button_value);
        NSNumber * temp = [standard_grading_scale3 objectForKey:button_value]; // get button value
        NSLog(@"%d", [temp integerValue]);
        [array_of_values addObject:temp]; // store the value for later
        [self categorize_summary: question_number number: temp];
        
    }
    if ([standard_grading_array_4 containsObject:question_number]) {
        NSLog(@"Question 4");
        NSString *button_value = [[the_button.titleLabel.text componentsSeparatedByString:@" - "] objectAtIndex:0];
        NSLog(@"%@", button_value);
        NSNumber * temp = [standard_grading_scale4 objectForKey:button_value]; // get button value
        NSLog(@"%d", [temp integerValue]);
        [array_of_values addObject:temp]; // store the value for later
        [self categorize_summary: question_number number: temp];
        
    }
    if ([standard_grading_array_5 containsObject:question_number]) {
        NSLog(@"Question 5");
        NSString *button_value = [[the_button.titleLabel.text componentsSeparatedByString:@" - "] objectAtIndex:0];
        NSLog(@"%@", button_value);
        NSNumber * temp = [standard_grading_scale5 objectForKey:button_value]; // get button value
        NSLog(@"%d", [temp integerValue]);
        [array_of_values addObject:temp]; // store the value for later
        [self categorize_summary: question_number number: temp];
        
    }
    NSLog(@"Question Finished Adding");

}
-(void)categorize_summary:(NSString*)questioNumber number:(NSNumber*)value {
    NSLog(@"CATEGG summary %@", questioNumber);
    if ([standard_summary_array_1 containsObject: questioNumber]) {
        category_1 = category_1 + value.integerValue;
    }
    if ([standard_summary_array_2 containsObject: questioNumber]) {
        category_2 = category_2 + value.integerValue;
    }
    if ([standard_summary_array_3 containsObject: questioNumber]) {
        category_3 = category_3 + value.integerValue;
    }
    if ([standard_summary_array_4 containsObject: questioNumber]) {
        category_4 = category_4 + value.integerValue;
    }
    if ([standard_summary_array_4 containsObject: questioNumber]) {
        category_5 = category_5 + value.integerValue;
    }
}

- (IBAction)btn_finishForm:(id)sender {
    
    //Reset everything when we recalculate.
    category_1 = 0; category_2 = 0; category_3 = 0; category_4 = 0; category_5 = 0;
    [array_of_values removeAllObjects];

    // Check that every field was filled out
    for (int a = 0; a < [buttonArray count]; a ++) {
        UIButton *button = [buttonArray objectAtIndex:a];
        NSLog(@"stuff %@",button.titleLabel.text);
        if([button.titleLabel.text isEqualToString:@"Select"]) {
            [[[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Please fill out the survey completely before continuing." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil] show];
            return; //exit out if something is not complete
        }
    }
    
    //Calculate
    
    for (int a = 0; a < [buttonArray count]; a++) {
        UIButton *button = [buttonArray objectAtIndex: a];
        NSString*button_name = button.accessibilityLabel;
        
        [self categorize_grading:button_name button:button];
        
        button.enabled = FALSE;
        button.alpha = .5;
        
        UILabel *label = [value_array objectAtIndex:a];
        label.hidden = FALSE;
        
        // check the button tag is in a standard array
            // if in standard array 1
                // get button value
                // apply button value to standard array 1 dictionary for value
                // get button value
                // store the button value for this button somewhere somehow
                // add this button value to a category score
        
    }
    
    for (int a = 0; a < [array_of_values count]; a ++) {
        UILabel *lab = [value_array objectAtIndex:a];
        lab.text = [[array_of_values objectAtIndex:a] stringValue];
    }
    NSLog(@"These are the category values, %d, %d, %d, %d, %d", category_1, category_2, category_3, category_4, category_5);
    
    // assign them to labels
    _score_1.text = [NSString stringWithFormat:@"%d", category_1];
    _score_2.text = [NSString stringWithFormat:@"%d", category_2];
    _score_3.text = [NSString stringWithFormat:@"%d", category_3];
    _score_4.text = [NSString stringWithFormat:@"%d", category_4];
    _score_5.text = [NSString stringWithFormat:@"%d", category_5];

    // hide the finish button
    UIButton *finish = (UIButton*)sender;
    finish.hidden = TRUE;
    
    _score_buttons.hidden = FALSE;
    //[[[UIAlertView alloc] initWithTitle:@"Thank You!" message:@"You have completed the survey. Please wait for your urologist before continuing." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil] show];
        
    // launch the popup.
    [self action_open_scores:finish];
    
    
}

- (IBAction)selectClicked:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    switch ([(UIButton*)sender tag]) {
        case 0:
            arr = [NSArray arrayWithObjects:
                   @"1 - More than once every day", @"2 - About once a day", @"3 - About once a week", @"4 - Rarely or never",nil];
            break;
        case 1:
            arr = [NSArray arrayWithObjects:@"1 - No urinary control whatsoever", @"2 - Frequent dribbling", @"3 - Occasional dribbling", @"4 - Total Control", nil ];
            break;
        case 2:
            arr = [NSArray arrayWithObjects: @"0 - None", @"1 - 1 pad per day", @"2 - 2 pads per day", @"3 - 3 or more pads per day", nil];
            break;
        case 3:
            arr = [NSArray arrayWithObjects: @"0 - No Problem", @"1 - Very Small Problem", @"2 - Small Problem", @"3 - Moderate Problem", @"4 - Big Problem", nil];
            break;
        case 4:
            arr = [NSArray arrayWithObjects: @"0 - No Problem", @"1 - Very Small Problem", @"2 - Small Problem", @"3 - Moderate Problem", @"4 - Big Problem", nil];
        case 5:
            arr = [NSArray arrayWithObjects: @"0 - No Problem", @"1 - Very Small Problem", @"2 - Small Problem", @"3 - Moderate Problem", @"4 - Big Problem", nil];
            break;
        case 6:
            arr = [NSArray arrayWithObjects:@"1 - Very Poor to None", @"2 - None", @"3 - Fair", @"4 - Good", @"5 - Very Good", nil];
            break;
        case 7:
            arr = [NSArray arrayWithObjects:@"1 - None at all", @"2 - Not firm enough for any sexual activity", @"3 - Firm enough for masturbation and foreplay only", @"4 - Firm enough for intercourse", nil];
            break;
        case 8:
            arr = [NSArray arrayWithObjects:@"1 - I NEVER had an erection when I wanted one", @"2 - I had an erection LESS THAN HALF the time I wanted one", @"3 - I have an erection ABOUT HALF the time I wanted one", @"4 - I had an erection MORE THAN HALF the time I wanted one", @"5 - I had an erection WHENEVER I wanted one", nil];
            break;
        case 9:
            arr = [NSArray arrayWithObjects:@"1 - Very Poor to None", @"2 - None", @"3 - Fair", @"4 - Good", @"5 - Very Good", nil];
            break;
        case 10:
            arr = [NSArray arrayWithObjects: @"0 - No Problem", @"1 - Very Small Problem", @"2 - Small Problem", @"3 - Moderate Problem", @"4 - Big Problem", nil];
            break;
        case 20:
            arr = [NSArray arrayWithObjects:@"1 - Very poor", @"2 - Poor", @"3 - Fair", @"4 - Good", @"5 - Very Good", nil];
            break;
        case 21:
            arr = [NSArray arrayWithObjects:@"1 - Not at all", @"2 - Less than once a week", @"3 - About once a week", @"4 - Several times a week", @"5 - Daily", nil];
            break;
        case 22:
            arr = [NSArray arrayWithObjects:@"1 - Never", @"2 - Less than once a week", @"3 - About once a weel", @"4 - Several times a week", @"5 - Daily", nil];
            break;
        case 30:
            arr = [NSArray arrayWithObjects:@"1 - No problem", @"2 - Very Small Problem", @"3 - Small Problem", @"4 - Moderate Problem", @"5 - Big Problem", nil];

        default:
            break;
    }
    UIButton *button = (UIButton*)sender;
    NSString *tempTitle = button.titleLabel.text;
    if ([tempTitle isEqualToString:@"Select"]) {
        NSString *myFile = [[NSBundle mainBundle] pathForResource:@"gold_dark_box" ofType:@"png"];
        UIImage *anImage = [UIImage imageWithContentsOfFile:myFile];
        [button setBackgroundImage:anImage forState:UIControlStateNormal];
    }

    if(dropDown == nil) {
        CGFloat f = 200;
        
        dropDown = [[NIDropDown alloc] showDropDown:sender height_in:&f arr_in:arr];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];

        [self rel];
    }
}
- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    
    [self rel];
}


-(void)rel{
    dropDown = nil;
}

- (IBAction)action_review_questions:(id)sender {
    _dark_bg.hidden = TRUE;
    [_popover_scores dismissPopoverAnimated:YES];
}
- (IBAction)action_open_scores:(id)sender {
    // launch the scores pages

    _dark_bg.hidden = FALSE;
    _popover_scores = [[UIPopoverController alloc] initWithContentViewController:_controller];
    _popover_scores.delegate = self;
    [_popover_scores setPopoverContentSize:_view_scores.frame.size];
    [_popover_scores presentPopoverFromRect:CGRectMake(150, 50, 500, _view_scores.frame.size.height + 100) inView:self.view permittedArrowDirections:0 animated:YES];

    
}

- (IBAction)action_scoring_details:(id)sender {
}
@end
