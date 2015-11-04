//
//  WebViewViewController.h
//  Sample
//
//  Created by James.hu on 10/29/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultisViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelNext;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
- (IBAction)btnNextClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *twoButton;
@property (weak, nonatomic) IBOutlet UISlider *scroller;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)textField:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *_switch;
@property (strong, nonatomic) NSString* url;
@end
