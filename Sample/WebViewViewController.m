//
//  WebViewViewController.m
//  Sample
//
//  Created by James.hu on 10/29/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()<UIWebViewDelegate>

@end


@implementation WebViewViewController

@synthesize url;
@synthesize labelNext;
@synthesize btnNext;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [labelNext setText:url];
    [btnNext setTitle:url forState:UIControlStateNormal];
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
    [labelNext setText:@"I Like Google more than Baidu!"];
}
@end
