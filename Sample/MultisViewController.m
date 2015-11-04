//
//  WebViewViewController.m
//  Sample
//
//  Created by James.hu on 10/29/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import "MultisViewController.h"

@interface MultisViewController ()

@end


@implementation MultisViewController

@synthesize url;
@synthesize labelNext;
@synthesize btnNext;

//@synthesize twoButton;
@synthesize scroller;
@synthesize twoButton;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [labelNext setText:url];
    [btnNext setTitle:url forState:UIControlStateNormal];
    
    [scroller addTarget:self action:@selector(scrolling:) forControlEvents:UIControlEventValueChanged];
    scroller.minimumValue = 1.0;
    scroller.maximumValue = 100.0;
    
    [twoButton addTarget:self action:@selector(twoButton:) forControlEvents:UIControlEventValueChanged];
    
    //[textField addTarget:self action:@selector(textFieldEnd:) forControlEvents:UIControlEventEditingDidEnd];
    //[textField addTarget:self action:@selector(textFieldChanged:) forControlEvents:UIControlEventEditingChanged];
    textField.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnNextClicked:(id)sender {
    [labelNext setText:@"I Like Google!"];
}

- (IBAction)scrolling:(id)sender{
    NSLog(@" scrolling to %d", (int)roundf(scroller.value));
}

- (IBAction)twoButton:(id)sender {
    //NSLog(@" two button state %lu", (unsigned long)twoButton.state);
    NSLog(@" two button selected %d", twoButton.selectedSegmentIndex);
    
}

//- (IBAction)textField:(id)sender {
//    NSLog(@"textFiled value = %@", textField.text);
//}

//- (IBAction)textFieldChanged:(id)sender{
//    NSLog(@" value %@ ", textField.text);
//}

//- (IBAction)textFieldEnd:(id)sender{
//    NSLog(@" text field input = %@ ", textField.text);
//}

-(void)textFieldDidEndEditing:(UITextField *)_textField{
    NSLog(@" text filed value = %@", _textField.text);
}

- (IBAction)textFieldLoose:(id)sender {
    //[self resignFirstResponder];
}

-(BOOL)textFieldShouldClear:(UITextField *)textField{
    NSLog(@" should clear value = %@", textField.text);
    return true;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@" should return value = %@", textField.text);
    //self.textField = textField_;
    //[self.textField resignFirstResponder];
    //[self.textField endEditing:YES];
    //[textField_ endEditing:YES];
    return [textField resignFirstResponder];
    //return true;
}

@end
