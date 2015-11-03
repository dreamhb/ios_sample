//
//  ViewController.m
//  Sample
//
//  Created by James.hu on 10/28/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import "ViewController.h"
#import "WebViewViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;
@synthesize image;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_click:(id)sender {
    UIButton* btn = ((UIButton*)sender);
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitle:@"Maomao" forState:UIControlStateNormal];
    
    [self.label setText:@" Button clicked !"];
    //self.image = [UIImage imageNamed:@"AppIcon.png"];
    [self.image setImage:[UIImage imageNamed:@"ic_add_content.png"]];
}
- (IBAction)url_click:(id)sender {
    [self performSegueWithIdentifier:@"webviewId" sender:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"webviewId"]){
        WebViewViewController* webview = segue.destinationViewController;
        webview.url = @"www.baidu.com";
    }
}
@end
